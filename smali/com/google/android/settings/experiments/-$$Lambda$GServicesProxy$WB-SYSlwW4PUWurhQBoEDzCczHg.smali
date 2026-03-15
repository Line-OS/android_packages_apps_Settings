.class public final synthetic Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Landroid/content/ContentResolver;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;->f$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/google/android/settings/experiments/GServicesProxy;->lambda$getResult$0(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
