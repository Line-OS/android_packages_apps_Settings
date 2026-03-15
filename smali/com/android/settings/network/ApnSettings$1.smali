.class Lcom/android/settings/network/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    .line 140
    sget-object p2, Lcom/android/settings/network/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result p1

    if-nez p1, :cond_1

    .line 143
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    const/16 p1, 0x3e9

    invoke-static {p0, p1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;I)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 151
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 152
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 154
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$400(Lcom/android/settings/network/ApnSettings;)I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 156
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2, p1}, Lcom/android/settings/network/ApnSettings;->access$402(Lcom/android/settings/network/ApnSettings;I)I

    .line 157
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$400(Lcom/android/settings/network/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$600(Lcom/android/settings/network/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$502(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 159
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    :cond_4
    :goto_0
    return-void
.end method
