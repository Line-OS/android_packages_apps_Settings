.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 301
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 302
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 304
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 305
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getNetworkId()I

    move-result v1

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;)V

    .line 304
    invoke-virtual {p2, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 315
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 324
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    :cond_1
    :goto_0
    return-void
.end method
