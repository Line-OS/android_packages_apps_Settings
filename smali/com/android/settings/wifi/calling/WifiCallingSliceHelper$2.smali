.class Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWfcMode(Lcom/android/ims/ImsManager;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Lcom/android/ims/ImsManager;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1

    .line 363
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;->val$imsManager:Lcom/android/ims/ImsManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;->call()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
