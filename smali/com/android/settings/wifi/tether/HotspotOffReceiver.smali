.class public Lcom/android/settings/wifi/tether/HotspotOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotOffReceiver.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HotspotOffReceiver"

    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "wifi"

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 32
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 p2, 0xb

    if-ne p0, p2, :cond_1

    .line 33
    sget-boolean p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "HotspotOffReceiver"

    const-string p2, "TetherService.cancelRecheckAlarmIfNecessary called"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 35
    invoke-static {p1, p0}, Lcom/android/settings/wifi/tether/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    :cond_0
    return-void
.end method
