.class public Lcom/android/settings/network/SubscriptionsChangeListener;
.super Landroid/database/ContentObserver;
.source "SubscriptionsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
    }
.end annotation


# instance fields
.field private mAirplaneModeSettingUri:Landroid/net/Uri;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

.field private mContext:Landroid/content/Context;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V
    .locals 1

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 49
    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    .line 51
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 52
    new-instance p1, Lcom/android/settings/network/SubscriptionsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener$1;-><init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string p1, "airplane_mode_on"

    .line 58
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    .line 59
    new-instance p1, Lcom/android/settings/network/SubscriptionsChangeListener$2;

    invoke-direct {p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener$2;-><init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/SubscriptionsChangeListener;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->subscriptionsChangedCallback()V

    return-void
.end method

.method private subscriptionsChangedCallback()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;->onSubscriptionsChanged()V

    return-void
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
