.class Lcom/android/settings/wifi/tether/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 366
    invoke-static {}, Lcom/android/settings/wifi/tether/TetherService;->access$000()Z

    move-result p1

    const-string v0, "TetherService"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got provision result "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/TetherService;->getResourceForActiveDataSubId()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x104018d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 371
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$100(Lcom/android/settings/wifi/tether/TetherService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected provision response "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/TetherService;->access$102(Lcom/android/settings/wifi/tether/TetherService;Z)Z

    const-string v0, "EntitlementResult"

    .line 377
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$500(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$600(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$400(Lcom/android/settings/wifi/tether/TetherService;)V

    .line 391
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->access$700(Lcom/android/settings/wifi/tether/TetherService;II)V

    .line 393
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$204(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 395
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    .line 398
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->access$800(Lcom/android/settings/wifi/tether/TetherService;I)V

    :cond_7
    :goto_1
    return-void
.end method
