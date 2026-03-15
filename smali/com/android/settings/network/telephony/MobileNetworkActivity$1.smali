.class Lcom/android/settings/network/telephony/MobileNetworkActivity$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MobileNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    iget-object v1, v0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    iget-object v0, v0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
