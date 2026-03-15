.class Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetNetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->p2pFactoryReset(Landroid/content/Context;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v1, "netpolicy"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    if-eqz v0, :cond_3

    .line 115
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "bluetooth"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_4

    .line 122
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 129
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 128
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 130
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-boolean p1, p1, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz p1, :cond_5

    .line 132
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x1

    .line 134
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const p1, 0x7f120c42

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120c3f

    .line 146
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f120c3e

    .line 147
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 145
    invoke-static {p1, p0}, Lcom/android/settings/ResetNetworkConfirm;->access$302(Lcom/android/settings/ResetNetworkConfirm;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
