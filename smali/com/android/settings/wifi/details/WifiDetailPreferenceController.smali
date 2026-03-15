.class public Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"

.field static final KEY_DATA_USAGE_HEADER:Ljava/lang/String; = "status_header"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "rx_link_speed"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SSID_PREF:Ljava/lang/String; = "ssid"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "tx_link_speed"

.field private static final TIMEOUT:J

.field static mTimer:Landroid/os/CountDownTimer;


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Z

.field private mConnectingState:I

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field mDataUsageSummaryPref:Landroidx/preference/Preference;

.field private mDnsPref:Landroidx/preference/Preference;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mFrequencyPref:Landroidx/preference/Preference;

.field private mGatewayPref:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

.field private mIpAddressPref:Landroidx/preference/Preference;

.field private mIpv6AddressPref:Landroidx/preference/Preference;

.field private mIpv6Category:Landroidx/preference/PreferenceCategory;

.field private mIsEphemeral:Z

.field private mIsOutOfRange:Z

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMacAddressPref:Landroidx/preference/Preference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiSignalLevel:I

.field private mRxLinkSpeedPref:Landroidx/preference/Preference;

.field private mSecurityPref:Landroidx/preference/Preference;

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Landroidx/preference/Preference;

.field private mSsidPref:Landroidx/preference/Preference;

.field private mSubnetPref:Landroidx/preference/Preference;

.field mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

.field private mTxLinkSpeedPref:Landroidx/preference/Preference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field final mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    const-wide/16 v0, 0xa

    .line 145
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->TIMEOUT:J

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;)V
    .locals 2

    .line 319
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    .line 194
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 218
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 221
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 266
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 321
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 322
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 323
    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 324
    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    .line 325
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0300d0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 327
    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 328
    iput-object p8, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 329
    iput-object p9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    .line 331
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 332
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iput-object p6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 337
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 339
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 340
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    iget-object p3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 339
    invoke-static {p1, p2, p3, v1, v1}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 345
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnected:Z

    .line 348
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsEphemeral:Z

    .line 349
    iput v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    .line 350
    new-instance p1, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshButtons()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsEphemeral:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectingState(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateAccessPointFromScannedList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshIpLayerInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkInfo;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshEntityHeader()V

    return-void
.end method

.method private canConnectNetwork()Z
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canModifyNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 817
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private canShareNetwork()Z
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 839
    invoke-static {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportConfiguratorQrCodeGenerator(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canSignIntoNetwork()Z
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiUtils;->canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private exitActivity()V
    .locals 2

    .line 556
    sget-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Exiting the WifiNetworkDetailsPage"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private forgetNetwork()V
    .locals 4

    .line 846
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_1

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    .line 862
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 850
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->showConfirmForgetDialog()V

    return-void

    .line 856
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getPasspointFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 858
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove Passpoint configuration for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 859
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getPasspointFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDetailsPrefCtrl"

    .line 858
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 866
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 865
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 867
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 701
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 705
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 706
    array-length v0, p0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 707
    aget-object p0, p0, v0

    return-object p0

    :cond_2
    const-string p0, "WifiDetailsPrefCtrl"

    const-string v0, "Can\'t get device MAC address!"

    .line 710
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 804
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 806
    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private launchWifiDppConfiguratorActivity()V
    .locals 7

    .line 895
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WifiDetailsPrefCtrl"

    const-string v0, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 899
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/16 v3, 0x6ae

    const/16 v4, 0x63b

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 907
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .locals 11

    .line 303
    new-instance v10, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance v9, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;)V

    return-object v10
.end method

.method private redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 595
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 596
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-eq v2, v0, :cond_1

    .line 598
    :cond_0
    const-class v1, Landroid/graphics/drawable/VectorDrawable;

    .line 599
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 604
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 607
    invoke-static {p1, v0, v0}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 610
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 613
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x1010036

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private refreshButtons()V
    .locals 5

    .line 725
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 726
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsEphemeral:Z

    if-eqz v1, :cond_0

    const v1, 0x7f121129

    goto :goto_0

    :cond_0
    const v1, 0x7f1206e1

    .line 725
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 728
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canForgetNetwork()Z

    move-result v0

    .line 729
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canSignIntoNetwork()Z

    move-result v1

    .line 730
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canConnectNetwork()Z

    move-result v2

    .line 731
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canShareNetwork()Z

    move-result v3

    .line 733
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 734
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 735
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 736
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 737
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshEntityHeader()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x1

    .line 445
    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Z)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 446
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 447
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private refreshFrequency()V
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 620
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 624
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    const/16 v2, 0x960

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1210f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x1324

    if-lt v0, v2, :cond_2

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_2

    .line 631
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1210fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 641
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 633
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected frequency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiDetailsPrefCtrl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 636
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method private refreshIpLayerInfo()V
    .locals 9

    .line 750
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 762
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 765
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 766
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 767
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 768
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_1

    .line 769
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 775
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 776
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 777
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 783
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v7, Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 784
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 785
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 788
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 789
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 790
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 794
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 795
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 796
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 798
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void

    .line 751
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 755
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshMacAddress()V
    .locals 3

    .line 678
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 680
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v1, "02:00:00:00:00:00"

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const v0, 0x7f12058e

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 688
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshPage()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateAccessPoint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Update UI!"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshEntityHeader()V

    .line 490
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshButtons()V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshRssiViews()V

    .line 495
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshFrequency()V

    .line 497
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshTxSpeed()V

    .line 499
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshRxSpeed()V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshIpLayerInfo()V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshSsid()V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshMacAddress()V

    return-void
.end method

.method private refreshRssiViews()V
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 566
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    if-eqz v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, -0x1

    .line 568
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    return-void

    .line 572
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    if-ne v1, v0, :cond_1

    return-void

    .line 575
    :cond_1
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 580
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 584
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x1010429

    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 586
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshRxSpeed()V
    .locals 5

    .line 657
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 658
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 662
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    .line 663
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120c8d

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 665
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 664
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshSsid()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 670
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private refreshTxSpeed()V
    .locals 5

    .line 645
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 646
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 650
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    .line 651
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120f6f

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 653
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 652
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupEntityHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "connection_header"

    .line 415
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 417
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 418
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "status_header"

    .line 419
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    .line 420
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 421
    new-instance p1, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 422
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 423
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    return-void

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 429
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const v2, 0x7f0a018c

    .line 430
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 428
    invoke-static {p1, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    const p1, 0x7f0a018e

    .line 432
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 434
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method private shareNetwork()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$hBo3qAeaRx3jOf6rcxTRI337Ir0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$hBo3qAeaRx3jOf6rcxTRI337Ir0;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 922
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 923
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x3f0

    .line 922
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    return-void
.end method

.method private startTimer()V
    .locals 7

    .line 1107
    sget-object v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->stopTimer()V

    .line 1111
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;

    sget-wide v3, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->TIMEOUT:J

    const-wide/16 v1, 0x1

    add-long v5, v3, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;JJ)V

    sput-object v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTimer:Landroid/os/CountDownTimer;

    .line 1135
    sget-object p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private stopTimer()V
    .locals 0

    .line 1139
    sget-object p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTimer:Landroid/os/CountDownTimer;

    if-nez p0, :cond_0

    return-void

    .line 1141
    :cond_0
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p0, 0x0

    .line 1142
    sput-object p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateAccessPointFromScannedList()V
    .locals 4

    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 546
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 548
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 549
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    :cond_1
    return-void
.end method

.method private updateConnectedButton(I)V
    .locals 4

    const v0, 0x7f080260

    const v1, 0x7f121119

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid connect button state : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDetailsPrefCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1087
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1088
    invoke-virtual {p0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1089
    invoke-virtual {p0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_0

    .line 1095
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1096
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1097
    invoke-virtual {p0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1098
    invoke-virtual {p0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_0

    .line 1081
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const p1, 0x7f12111c

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    .line 1082
    invoke-virtual {p0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectingState(I)V
    .locals 8

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectingState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDetailsPrefCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    const v3, 0x7f121173

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_7

    .line 1069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ne p1, v5, :cond_1

    const-string v1, "connected"

    .line 1039
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->stopTimer()V

    .line 1041
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    .line 1042
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12111b

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1044
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1043
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1047
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshPage()V

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    const-string p1, "AP not in range"

    .line 1049
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->stopTimer()V

    const p1, 0x7f1211b2

    .line 1053
    invoke-static {v0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1056
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_8

    const-string p1, "failed"

    .line 1058
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->stopTimer()V

    .line 1062
    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1064
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1065
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    goto/16 :goto_3

    :cond_3
    if-ne p1, v5, :cond_4

    const-string v1, "Turn on Wi-Fi automatically!"

    .line 997
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    const v1, 0x7f121228

    .line 999
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1002
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1004
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->startTimer()V

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_6

    const-string v0, "connecting..."

    .line 1006
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1009
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1011
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1014
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->startTimer()V

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    const-string p1, "Wi-Fi failed to enable network!"

    .line 1016
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->stopTimer()V

    .line 1020
    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1022
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1023
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    move p1, v7

    :cond_7
    :goto_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    const-string p1, "disconnected"

    .line 1028
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectedButton(I)V

    .line 1032
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshPage()V

    const/4 p1, 0x0

    .line 1034
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_3

    :cond_8
    :goto_2
    move v7, p1

    .line 1074
    :goto_3
    iput v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 453
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 454
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 715
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 716
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 717
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 719
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private usingDataUsageHeader(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "settings_wifi_details_datausage_header"

    .line 965
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canModifyNetwork()Z
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method connectNetwork()V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    const p0, 0x7f121173

    const/4 v1, 0x0

    .line 973
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 975
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 980
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectingState:I

    .line 982
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 983
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectingState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 986
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectingState(I)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 376
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->setupEntityHeader(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "buttons"

    .line 380
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f1206e1

    .line 381
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080240

    .line 382
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HDOTYXVF80U7sCZa22KqorlzriY;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HDOTYXVF80U7sCZa22KqorlzriY;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f12120a

    .line 384
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080259

    .line 385
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PxMNywf_HXiVAESmLubuiIo869s;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PxMNywf_HXiVAESmLubuiIo869s;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 386
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f121119

    .line 387
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080260

    .line 388
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$QsxxFhKQ64dtDlyizqvsqmZBnQs;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$QsxxFhKQ64dtDlyizqvsqmZBnQs;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 389
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const/4 v1, 0x1

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f120d8c

    .line 391
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080223

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$jwrJ9iSh444Vbk0-xp51HbR-SfI;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$jwrJ9iSh444Vbk0-xp51HbR-SfI;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string v0, "signal_strength"

    .line 395
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Landroidx/preference/Preference;

    const-string v0, "tx_link_speed"

    .line 396
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "rx_link_speed"

    .line 397
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 398
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    const-string v0, "security"

    .line 399
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Landroidx/preference/Preference;

    const-string v0, "ssid"

    .line 401
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 402
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 403
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 404
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Landroidx/preference/Preference;

    const-string v0, "subnet_mask"

    .line 405
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "dns"

    .line 406
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Landroidx/preference/Preference;

    const-string v0, "ipv6_category"

    .line 408
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const-string v0, "ipv6_addresses"

    .line 409
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 411
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$WifiDetailPreferenceController(Landroid/view/View;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->forgetNetwork()V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$WifiDetailPreferenceController(Landroid/view/View;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->signIntoNetwork()V

    return-void
.end method

.method public synthetic lambda$displayPreference$2$WifiDetailPreferenceController(Landroid/view/View;)V
    .locals 0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->connectNetwork()V

    return-void
.end method

.method public synthetic lambda$displayPreference$3$WifiDetailPreferenceController(Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->shareNetwork()V

    return-void
.end method

.method public synthetic lambda$shareNetwork$5$WifiDetailPreferenceController()V
    .locals 0

    .line 915
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->launchWifiDppConfiguratorActivity()V

    return-void
.end method

.method public synthetic lambda$showConfirmForgetDialog$4$WifiDetailPreferenceController(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 875
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove Passpoint configuration for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 878
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDetailsPrefCtrl"

    .line 877
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 881
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 880
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 882
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 471
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 472
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 473
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 474
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 475
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 461
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateNetworkInfo()V

    .line 462
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshPage()V

    .line 463
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 929
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method protected showConfirmForgetDialog()V
    .locals 2

    .line 872
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$DJgcBPw5ALMciGIfGz8AzgfoH5Y;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$DJgcBPw5ALMciGIfGz8AzgfoH5Y;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    const p0, 0x7f1206e1

    .line 873
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1203bd

    const/4 v1, 0x0

    .line 884
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f121178

    .line 885
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1206e2

    .line 886
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 887
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 888
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method updateAccessPoint()Z
    .locals 6

    .line 512
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    .line 513
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateAccessPointFromScannedList()V

    .line 515
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateNetworkInfo()V

    .line 517
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 518
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 519
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    or-int/2addr v1, v2

    goto :goto_1

    .line 522
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    return v2

    :cond_2
    move v1, v2

    .line 529
    :goto_1
    iget v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    or-int/2addr v1, v3

    .line 531
    iget-boolean v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIsOutOfRange:Z

    if-eq v0, v3, :cond_4

    move v2, v5

    :cond_4
    or-int v0, v1, v2

    .line 533
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnected:Z

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eq v1, v2, :cond_6

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnected:Z

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateConnectingState(I)V

    move v0, v5

    :cond_6
    return v0
.end method
