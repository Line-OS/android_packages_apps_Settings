.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeGeneratorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

.field private mPasswordView:Landroid/widget/TextView;

.field private mQrCode:Ljava/lang/String;

.field private mQrCodeView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    return-void
.end method

.method private setQrCode()V
    .locals 2

    .line 153
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/qrcode/QrCodeGenerator;->encodeQrCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCodeView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error generatting QR code bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiDppQrCodeGeneratorFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method getWifiNetworkConfigFromHostActivity()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    .line 164
    invoke-interface {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 166
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getWifiNetworkConfigFromHostActivity()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121163

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121164

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 86
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v0, 0x1

    .line 98
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d022a

    const/4 p3, 0x0

    .line 109
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a036a

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCodeView:Landroid/widget/ImageView;

    const p2, 0x7f080223

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getWifiNetworkConfigFromHostActivity()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p2

    .line 122
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f121163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f121164

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :goto_0
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0312

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f12115e

    new-array v2, v2, [Ljava/lang/Object;

    .line 133
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 131
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f121162

    new-array v4, v2, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 137
    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    const v3, 0x7f12115c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    const v3, 0x7f121166

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_1
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getQrCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCode:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->setQrCode()V

    return-void
.end method
