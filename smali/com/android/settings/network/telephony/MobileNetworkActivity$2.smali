.class Lcom/android/settings/network/telephony/MobileNetworkActivity$2;
.super Ljava/lang/Object;
.source "MobileNetworkActivity.java"

# interfaces
.implements Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 97
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscriptionId()I
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    return p0
.end method

.method public onPhoneChange()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;IZ)V

    return-void
.end method
