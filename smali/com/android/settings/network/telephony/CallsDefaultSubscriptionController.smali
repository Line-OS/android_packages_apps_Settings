.class public Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.source "CallsDefaultSubscriptionController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDefaultSubscriptionId()I
    .locals 0

    .line 36
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method protected setDefaultSubscription(I)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    return-void
.end method
