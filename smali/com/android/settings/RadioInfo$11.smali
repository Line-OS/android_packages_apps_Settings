.class Lcom/android/settings/RadioInfo$11;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1285
    iget-object p1, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3400(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result p1

    .line 1286
    iget-object v0, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3400(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    .line 1287
    iget-object v1, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3400(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    .line 1288
    iget-object v2, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$3400(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v2

    .line 1289
    iget-object v3, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v3}, Lcom/android/settings/RadioInfo;->access$3400(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v3

    if-eqz p1, :cond_0

    .line 1292
    iget-object p1, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    const v4, 0x7f120c0b

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1293
    :cond_0
    iget-object p1, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    const v4, 0x7f120c0a

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1295
    :goto_0
    iget-object v4, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    const v5, 0x7f120c07

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1296
    iget-object v5, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    const v6, 0x7f120c08

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1299
    iget-object v6, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    const v7, 0x7f120c09

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    if-eqz v0, :cond_1

    move-object p1, v4

    goto :goto_1

    :cond_1
    move-object p1, v5

    :goto_1
    const/4 v0, 0x1

    aput-object p1, v8, v0

    const/4 p1, 0x2

    if-eqz v1, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    move-object v1, v5

    :goto_2
    aput-object v1, v8, p1

    const/4 p1, 0x3

    if-eqz v2, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v1, v5

    :goto_3
    aput-object v1, v8, p1

    const/4 p1, 0x4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v5

    :goto_4
    aput-object v4, v8, p1

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1306
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1307
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/RadioInfo$11;->this$0:Lcom/android/settings/RadioInfo;

    const p1, 0x7f120c0c

    .line 1308
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1309
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 1311
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v0
.end method
