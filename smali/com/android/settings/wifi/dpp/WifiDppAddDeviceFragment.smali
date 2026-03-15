.class public Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;,
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
    }
.end annotation


# instance fields
.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonRight:Landroid/widget/Button;

.field private mChooseDifferentNetwork:Landroid/widget/Button;

.field mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

.field private mLatestStatusCode:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWifiApPictureView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;IZ)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(IZ)V

    return-void
.end method

.method private changeFocusAndAnnounceChange(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p0, 0x8

    .line 374
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p0, 0x20

    .line 375
    invoke-virtual {p2, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private getSsid()Ljava/lang/String;
    .locals 1

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    .line 311
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 312
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasRetryButton(I)Z
    .locals 0

    const/4 p0, -0x3

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGoingInitiator()Z
    .locals 1

    .line 352
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isGoingInitiator()Z

    move-result p0

    return p0
.end method

.method private showErrorUi(IZ)V
    .locals 5

    const v0, 0x7f121157

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 159
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected Wi-Fi DPP error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f121155

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f121159

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    return-void

    .line 130
    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    if-eq p1, p2, :cond_1

    .line 135
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 138
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    return-void

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried restarting EasyConnectSession but stillreceiving EASY_CONNECT_EVENT_FAILURE_BUSY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f12115b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f121158

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f12115a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f121154

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v2, 0x7f080316

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->hasRetryButton(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    const v3, 0x7f120c63

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    const v3, 0x7f1205f5

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$LUaHJpWEoknxBaJ7zv0hqNNhQ0E;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$LUaHJpWEoknxBaJ7zv0hqNNhQ0E;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f121165

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p2, :cond_6

    .line 181
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 182
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->changeFocusAndAnnounceChange(Landroid/view/View;Landroid/view/View;)V

    :cond_6
    return-void

    .line 155
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Wi-Fi DPP configurator used a non-PSK/non-SAEnetwork to handshake"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSuccessUi(Z)V
    .locals 3

    const v0, 0x7f08010b

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f121167

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v1, 0x7f080317

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonLeft:Landroid/widget/Button;

    const v1, 0x7f121149

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonLeft:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$dntOA5CSz7vdUN8fKOi6A_4uTjw;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$dntOA5CSz7vdUN8fKOi6A_4uTjw;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    const v1, 0x7f1205f5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$0F_t6DDfzPLj-kfZO-w4l4LdPjU;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$0F_t6DDfzPLj-kfZO-w4l4LdPjU;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 102
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 103
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->changeFocusAndAnnounceChange(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private startWifiDppConfiguratorInitiator()V
    .locals 3

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 319
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v1

    .line 324
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v2, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V

    return-void
.end method

.method private updateSummary()V
    .locals 5

    .line 358
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f121165

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f12114c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method public synthetic lambda$onCreate$3$WifiDppAddDeviceFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isGoingInitiator()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 224
    new-instance p2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onConfiguratorSuccess(I)V

    goto :goto_0

    .line 226
    :cond_1
    new-instance p2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onFailure(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$4$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;->onClickChooseDifferentNetwork()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$5$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$6$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary()V

    .line 284
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitleSummaryContainer:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public synthetic lambda$showErrorUi$2$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$showSuccessUi$0$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public synthetic lambda$showSuccessUi$1$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 337
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 339
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_latest_error_code"

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 213
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 215
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0226

    const/4 p3, 0x0

    .line 244
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    .line 346
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 303
    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const-string v1, "key_latest_error_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 250
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f08010d

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    const v0, 0x7f0a0227

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 257
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getInformation()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f121156

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary()V

    const v0, 0x7f0a04d7

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v0, 0x7f0a00f9

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$gzpbkmWTjT17nBVoNoD9odnQ1ks;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$gzpbkmWTjT17nBVoNoD9odnQ1ks;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d1

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonLeft:Landroid/widget/Button;

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonLeft:Landroid/widget/Button;

    const v1, 0x7f1203bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonLeft:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$P-dookd_X5dhJOm7Vf3Fqshw60Q;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$P-dookd_X5dhJOm7Vf3Fqshw60Q;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d2

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    .line 278
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    const v0, 0x7f121164

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 279
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$co6MlaQuNMuge8n_bCbWqRO3VEQ;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$co6MlaQuNMuge8n_bCbWqRO3VEQ;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_5

    .line 288
    iget p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 289
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_4

    .line 291
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isGoingInitiator()Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(IZ)V

    goto :goto_2

    .line 297
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mButtonRight:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitleSummaryContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->changeFocusAndAnnounceChange(Landroid/view/View;Landroid/view/View;)V

    :goto_2
    return-void
.end method
