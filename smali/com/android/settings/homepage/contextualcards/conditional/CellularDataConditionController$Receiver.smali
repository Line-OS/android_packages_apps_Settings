.class public Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CellularDataConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ANY_DATA_STATE"

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_0
    return-void
.end method
