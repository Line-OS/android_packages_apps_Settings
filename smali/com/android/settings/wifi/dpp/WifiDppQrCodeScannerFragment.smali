.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeScannerFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
.implements Landroid/net/wifi/WifiManager$ActionListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;,
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
    }
.end annotation


# instance fields
.field private mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

.field private mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

.field private mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConfiguratorMode:Z

.field private mLatestStatusCode:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

.field private mSsid:Ljava/lang/String;

.field private mTextureView:Landroid/view/TextureView;

.field private mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 312
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 116
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 322
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 116
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 324
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    .line 325
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/qrcode/QrDecorateView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->notifyUserForQrCodeRecognition()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method private destroyCamera()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private handleWifiDpp()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 496
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleZxingWifiFormat()V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-nez v0, :cond_1

    .line 516
    new-instance v0, Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    .line 518
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isGoingInitiator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isGoingInitiator()Z
    .locals 1

    .line 678
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isGoingInitiator()Z

    move-result p0

    return p0
.end method

.method private isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 228
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 231
    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private notifyUserForQrCodeRecognition()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    return-void
.end method

.method private restartCamera()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-nez v0, :cond_0

    const-string p0, "WifiDppQrCodeScanner"

    const-string v0, "mCamera is not available for restarting camera"

    .line 688
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 692
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->isDecodeTaskAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 701
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 698
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTexture is not ready for restarting camera"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private showErrorMessage(I)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 537
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 536
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 538
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showErrorMessageAndRestartCamera(I)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 543
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 542
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 544
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 545
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 1

    .line 653
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 655
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;)V

    return-void
.end method

.method private updateEnrolleeSummary()V
    .locals 4

    .line 705
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isGoingInitiator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f121153

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const v0, 0x7f121161

    new-array v2, v2, [Ljava/lang/Object;

    .line 710
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f121160

    new-array v2, v2, [Ljava/lang/Object;

    .line 712
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 714
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 438
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 295
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x63b

    return p0

    :cond_0
    const/16 p0, 0x63c

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 433
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 3

    .line 480
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x10944

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x28a715

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "DPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 486
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->handleZxingWifiFormat()V

    goto :goto_2

    .line 482
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->handleWifiDpp()V

    :goto_2
    return-void
.end method

.method protected isDecodeTaskAlive()Z
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->isDecodeTaskAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f121155

    .line 449
    :try_start_0
    new-instance v2, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 458
    iget-boolean v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v3, "WIFI"

    if-nez v2, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 460
    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0

    .line 467
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 468
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 451
    :catch_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0
.end method

.method public synthetic lambda$onCreate$0$WifiDppQrCodeScannerFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isGoingInitiator()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onEnrolleeSuccess(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$WifiDppQrCodeScannerFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 265
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isGoingInitiator()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Easy connect enrollee callback onFailure "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance p2, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onFailure(I)V

    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 330
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 333
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {p1, p0, v0, v2, v1}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 336
    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12114b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12115f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 345
    invoke-virtual {p0}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 351
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 353
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 241
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_is_configurator_mode"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v0, "key_latest_error_code"

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v0, "key_wifi_configuration"

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 250
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 252
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getEnrolleeSuccessNetworkId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$pDAVP_ZnST79iW0FN3k5nED9adM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$pDAVP_ZnST79iW0FN3k5nED9adM;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 262
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 v0, 0x1

    .line 405
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 407
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d022b

    const/4 p3, 0x0

    .line 366
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    .line 360
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi connect onFailure reason - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f12114e

    .line 672
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    .line 281
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isGoingInitiator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 550
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v1, "key_is_configurator_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v1, "key_latest_error_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "key_wifi_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 554
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 660
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 661
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "wifi_configuration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, -0x1

    .line 665
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 666
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->destroyCamera()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 372
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0341

    .line 374
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    .line 375
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const p2, 0x7f0a0143

    .line 377
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const p2, 0x7f080229

    .line 379
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    const p2, 0x7f0a0227

    .line 381
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 382
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isGoingInitiator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 384
    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p2, :cond_2

    .line 385
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f12114b

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    .line 388
    invoke-interface {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p2

    .line 389
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f12114d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 393
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    .line 392
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 390
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f12115f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 397
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    :goto_1
    const p2, 0x7f0a0198

    .line 400
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
