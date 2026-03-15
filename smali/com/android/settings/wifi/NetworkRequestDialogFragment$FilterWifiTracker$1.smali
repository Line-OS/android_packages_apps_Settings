.class Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;
.super Ljava/lang/Object;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;->this$1:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessPointsChanged()V
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;->this$1:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;->this$1:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;->this$1:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    return-void
.end method
