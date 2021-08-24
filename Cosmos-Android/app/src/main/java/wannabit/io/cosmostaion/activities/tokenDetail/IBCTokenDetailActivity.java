package wannabit.io.cosmostaion.activities.tokenDetail;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.squareup.picasso.Picasso;

import java.math.BigDecimal;

import wannabit.io.cosmostaion.R;
import wannabit.io.cosmostaion.activities.SendActivity;
import wannabit.io.cosmostaion.base.BaseActivity;
import wannabit.io.cosmostaion.base.BaseChain;
import wannabit.io.cosmostaion.dao.IbcToken;
import wannabit.io.cosmostaion.dialog.Dialog_AccountShow;
import wannabit.io.cosmostaion.utils.WDp;
import wannabit.io.cosmostaion.utils.WKey;
import wannabit.io.cosmostaion.utils.WLog;
import wannabit.io.cosmostaion.utils.WUtil;

import static wannabit.io.cosmostaion.base.BaseChain.OKEX_MAIN;
import static wannabit.io.cosmostaion.base.BaseChain.OK_TEST;
import static wannabit.io.cosmostaion.base.BaseConstant.CONST_PW_TX_SIMPLE_SEND;

public class IBCTokenDetailActivity extends BaseActivity implements View.OnClickListener{

    private Toolbar                         mToolbar;
    private ImageView                       mToolbarSymbolImg;
    private TextView                        mToolbarSymbol;
    private TextView                        mItemPerPrice;
    private ImageView                       mItemUpDownImg;
    private TextView                        mItemUpDownPrice;

    private CardView                        mBtnAddressPopup;
    private ImageView                       mKeyState;
    private TextView                        mAddress;
    private TextView                        mTotalValue;

    private SwipeRefreshLayout              mSwipeRefreshLayout;
    private RecyclerView                    mRecyclerView;

    private RelativeLayout                  mBtnIbcSend;
    private RelativeLayout                  mBtnSend;

    private IBCTokenAdapter                 mAdapter;

    private String                          mIbcDenom;
    private IbcToken                        mIbcToken;
    private int                             mIbcDivideDecimal = 6;
    private int                             mIbcDisplayDecimal = 6;
    private BigDecimal                      mTotalAmount = BigDecimal.ZERO;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ibc_token_detail);
        mToolbar                = findViewById(R.id.tool_bar);
        mToolbarSymbolImg       = findViewById(R.id.toolbar_symbol_img);
        mToolbarSymbol          = findViewById(R.id.toolbar_symbol);
        mItemPerPrice           = findViewById(R.id.per_price);
        mItemUpDownImg          = findViewById(R.id.ic_price_updown);
        mItemUpDownPrice        = findViewById(R.id.dash_price_updown_tx);

        mBtnAddressPopup        = findViewById(R.id.card_root);
        mKeyState               = findViewById(R.id.img_account);
        mAddress                = findViewById(R.id.account_Address);
        mTotalValue             = findViewById(R.id.total_value);
        mSwipeRefreshLayout     = findViewById(R.id.layer_refresher);
        mRecyclerView           = findViewById(R.id.recycler);
        mBtnIbcSend             = findViewById(R.id.btn_ibc_send);
        mBtnSend                = findViewById(R.id.btn_send);

        setSupportActionBar(mToolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        mAccount    = getBaseDao().onSelectAccount(getBaseDao().getLastUser());
        mBaseChain  = BaseChain.getChain(mAccount.baseChain);
        mIbcDenom  = getIntent().getStringExtra("denom");
        mIbcToken   = getBaseDao().getIbcToken(mIbcDenom);

        mRecyclerView.setLayoutManager(new LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false));
        mRecyclerView.setHasFixedSize(true);
        mAdapter = new IBCTokenAdapter();
        mRecyclerView.setAdapter(mAdapter);

        mSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                onUpdateView();
            }
        });

        onUpdateView();
        mBtnAddressPopup.setOnClickListener(this);
        mBtnIbcSend.setOnClickListener(this);
        mBtnSend.setOnClickListener(this);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    private void onUpdateView() {
        final String baseDenom = getBaseDao().getBaseDenom(mIbcDenom);
        if (mIbcToken == null) {
            mToolbarSymbolImg.setImageDrawable(getResources().getDrawable(R.drawable.token_default_ibc));
            mToolbarSymbol.setText("Unknown");
            mToolbarSymbol.setTextColor(getResources().getColor(R.color.colorWhite));

        } else {
            if (mIbcToken.auth) {
                mIbcDivideDecimal = mIbcToken.decimal;
                try {
                    Picasso.get().load(mIbcToken.moniker).fit().placeholder(R.drawable.token_default_ibc).error(R.drawable.token_default_ibc).into(mToolbarSymbolImg);
                } catch (Exception e){}
                mToolbarSymbol.setText(mIbcToken.display_denom.toUpperCase());
                mToolbarSymbol.setTextColor(getResources().getColor(R.color.colorWhite));
                mTotalValue.setText("" + WDp.dpUserCurrencyValue(getBaseDao(), baseDenom, getBaseDao().getAvailable(mIbcDenom), mIbcDivideDecimal));

                mItemPerPrice.setText(WDp.dpPerUserCurrencyValue(getBaseDao(), baseDenom));
                mItemUpDownPrice.setText(WDp.dpValueChange(getBaseDao(), baseDenom));
                final BigDecimal lastUpDown = WDp.valueChange(getBaseDao(), baseDenom);
                if (lastUpDown.compareTo(BigDecimal.ZERO) > 0) {
                    mItemUpDownImg.setVisibility(View.VISIBLE);
                    mItemUpDownImg.setImageDrawable(getResources().getDrawable(R.drawable.ic_price_up));
                } else if (lastUpDown.compareTo(BigDecimal.ZERO) < 0) {
                    mItemUpDownImg.setVisibility(View.VISIBLE);
                    mItemUpDownImg.setImageDrawable(getResources().getDrawable(R.drawable.ic_price_down));
                } else {
                    mItemUpDownImg.setVisibility(View.INVISIBLE);
                }

            } else {
                mToolbarSymbolImg.setImageDrawable(getResources().getDrawable(R.drawable.token_default_ibc));
                mToolbarSymbol.setText("Unknown");
                mToolbarSymbol.setTextColor(getResources().getColor(R.color.colorWhite));
                mTotalValue.setText(WDp.dpUserCurrencyValue(getBaseDao(), baseDenom, BigDecimal.ZERO, mIbcDivideDecimal));

                mItemPerPrice.setText("");
                mItemUpDownPrice.setText("");
                mItemUpDownImg.setVisibility(View.INVISIBLE);
            }
        }

        mBtnAddressPopup.setBackgroundColor(WDp.getChainBgColor(IBCTokenDetailActivity.this, mBaseChain));
        mAddress.setText(mAccount.address);
        mKeyState.setColorFilter(ContextCompat.getColor(getBaseContext(), R.color.colorGray0), android.graphics.PorterDuff.Mode.SRC_IN);
        if (mAccount.hasPrivateKey) {
            mKeyState.setColorFilter(WDp.getChainColor(getBaseContext(), mBaseChain), android.graphics.PorterDuff.Mode.SRC_IN);
        }
        mSwipeRefreshLayout.setRefreshing(false);
    }

    @Override
    public void onClick(View v) {
        if (v.equals(mBtnAddressPopup)) {
            Bundle bundle = new Bundle();
            bundle.putString("address", mAccount.address);
            if (TextUtils.isEmpty(mAccount.nickName)) { bundle.putString("title", getString(R.string.str_my_wallet) + mAccount.id); }
            else { bundle.putString("title", mAccount.nickName); }
            Dialog_AccountShow show = Dialog_AccountShow.newInstance(bundle);
            show.setCancelable(true);
            getSupportFragmentManager().beginTransaction().add(show, "dialog").commitNowAllowingStateLoss();

        } else if (v.equals(mBtnIbcSend)) {
            Toast.makeText(getBaseContext(), R.string.error_prepare, Toast.LENGTH_SHORT).show();
            return;

        } else if (v.equals(mBtnSend)) {
            Intent intent = new Intent(getBaseContext(), SendActivity.class);
            BigDecimal mainAvailable = getBaseDao().getAvailable(WDp.mainDenom(mBaseChain));
            BigDecimal feeAmount = WUtil.getEstimateGasFeeAmount(getBaseContext(), mBaseChain, CONST_PW_TX_SIMPLE_SEND, 0);
            if (mainAvailable.compareTo(feeAmount) < 0) {
                Toast.makeText(getBaseContext(), R.string.error_not_enough_fee, Toast.LENGTH_SHORT).show();
                return;
            }
            intent.putExtra("sendTokenDenom", mIbcDenom);
            startActivity(intent);
        }
    }

    private class IBCTokenAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private static final int TYPE_AMOUNT                        = 0;
        private static final int TYPE_IBC_STATUS                    = 1;
        private static final int TYPE_HISTORY                       = 2;

        @NonNull
        @Override
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
            if(viewType == TYPE_AMOUNT) {
                return new AmountHolder(getLayoutInflater().inflate(R.layout.item_amount_detail, viewGroup, false));
            } else if(viewType == TYPE_IBC_STATUS) {
                return new IbcStatusHolder(getLayoutInflater().inflate(R.layout.item_ibc_token_status, viewGroup, false));
            }
            return null;
        }

        @Override
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int position) {
            if (getItemViewType(position) == TYPE_AMOUNT) {
                onBindAmount(viewHolder);
            } else if (getItemViewType(position) == TYPE_IBC_STATUS) {
                onBindIbcInfo(viewHolder);
            }
        }

        @Override
        public int getItemCount() {
            return 2;
        }

        @Override
        public int getItemViewType(int position) {
            if (position == 0) {
                return TYPE_AMOUNT;
            } else if (position == 1) {
                return TYPE_IBC_STATUS;
            } else {
                return TYPE_HISTORY;
            }
        }

        private void onBindAmount(RecyclerView.ViewHolder viewHolder) {
            final AmountHolder holder = (IBCTokenAdapter.AmountHolder) viewHolder;
            final BigDecimal totalAmount = getBaseDao().getAvailable(mIbcDenom);
            if (mIbcToken.auth) {
                mIbcDivideDecimal = mIbcToken.decimal;
                mIbcDisplayDecimal = mIbcToken.decimal;
            }
            holder.itemTotal.setText("" + WDp.getDpAmount2(IBCTokenDetailActivity.this, totalAmount, mIbcDivideDecimal, mIbcDisplayDecimal));
            holder.itemAvailable.setText("" + WDp.getDpAmount2(IBCTokenDetailActivity.this, totalAmount, mIbcDivideDecimal, mIbcDisplayDecimal));
        }

        private void onBindIbcInfo(RecyclerView.ViewHolder viewHolder) {
            final IbcStatusHolder holder = (IBCTokenAdapter.IbcStatusHolder) viewHolder;
            if (mIbcToken.auth) {
                holder.itemIbcInfo.setImageDrawable(getDrawable(R.drawable.authed));
            } else {
                holder.itemIbcInfo.setVisibility(View.VISIBLE);
            }
            holder.itemOppositeChainId.setText(mIbcToken.counter_party.chain_id);
            holder.itemChannel.setText(mIbcToken.channel_id);
            holder.itemOppositeChannel.setText(mIbcToken.counter_party.channel_id);
            holder.itemDenom.setText("ibc/" + mIbcToken.hash);
            holder.itemOppositeDenom.setText(mIbcToken.base_denom);
        }

        public class AmountHolder extends RecyclerView.ViewHolder {
            private TextView            itemTotal;
            private TextView            itemAvailable;

            public AmountHolder(View v) {
                super(v);
                itemTotal               = itemView.findViewById(R.id.total_amount);
                itemAvailable           = itemView.findViewById(R.id.available_amount);
            }
        }

        public class IbcStatusHolder extends RecyclerView.ViewHolder {
            private ImageView           itemIbcInfo;
            private TextView            itemOppositeChainId;
            private TextView            itemChannel;
            private TextView            itemOppositeChannel;
            private TextView            itemDenom;
            private TextView            itemOppositeDenom;

            public IbcStatusHolder(View v) {
                super(v);
                itemIbcInfo             = itemView.findViewById(R.id.ibc_info);
                itemOppositeChainId     = itemView.findViewById(R.id.ibc_opposit_chain_id);
                itemChannel             = itemView.findViewById(R.id.ibc_channel);
                itemOppositeChannel     = itemView.findViewById(R.id.ibc_opposite_channel);
                itemDenom               = itemView.findViewById(R.id.ibc_denom);
                itemOppositeDenom       = itemView.findViewById(R.id.ibc_opposite_denom);
            }
        }
    }
}
