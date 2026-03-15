.class Lcom/android/settings/RadioInfo$32;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1714
    iput-object p1, p0, Lcom/android/settings/RadioInfo$32;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1718
    iget-object p1, p0, Lcom/android/settings/RadioInfo$32;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    .line 1719
    iget-object p0, p0, Lcom/android/settings/RadioInfo$32;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)V

    :cond_0
    return-void
.end method
