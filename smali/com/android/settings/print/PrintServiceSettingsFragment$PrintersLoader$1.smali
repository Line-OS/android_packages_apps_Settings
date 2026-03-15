.class Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->loadInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintersChanged()V
    .locals 2

    .line 727
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    new-instance v0, Ljava/util/ArrayList;

    .line 728
    invoke-static {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->access$900(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)Landroid/print/PrinterDiscoverySession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 727
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method
