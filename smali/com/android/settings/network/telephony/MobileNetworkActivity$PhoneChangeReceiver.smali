.class Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneChangeReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 289
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 290
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

    .line 291
    invoke-interface {p2}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;->getSubscriptionId()I

    move-result p2

    if-eq p1, p2, :cond_2

    :cond_1
    return-void

    .line 295
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;->onPhoneChange()V

    return-void
.end method

.method public register()V
    .locals 2

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
