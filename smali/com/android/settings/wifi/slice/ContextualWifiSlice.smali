.class public Lcom/android/settings/wifi/slice/ContextualWifiSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ContextualWifiSlice.java"


# static fields
.field static sActiveUiSession:J = -0x3e8L

.field static sPreviouslyDisplayed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "<unknown ssid>"

    return-object p0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasInternetAccess()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 89
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x18

    .line 90
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 91
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasWorkingNetwork()Z
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<unknown ssid>"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->hasInternetAccess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 96
    const-class p0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getUiSessionToken()J

    move-result-wide v0

    .line 59
    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 60
    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    .line 63
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->hasWorkingNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ContextualWifiSlice"

    const-string v0, "Wifi is connected, no point showing any suggestion."

    .line 64
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    .line 71
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 52
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method
