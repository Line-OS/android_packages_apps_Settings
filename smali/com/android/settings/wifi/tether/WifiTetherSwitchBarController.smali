.class public Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# static fields
.field private static final WIFI_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field final mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 113
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    .line 69
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string p2, "connectivity"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p2, "wifi"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 147
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWifiSwitch()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method startTether()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v2, Landroid/os/Handler;

    .line 110
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    .line 109
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method stopTether()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method
