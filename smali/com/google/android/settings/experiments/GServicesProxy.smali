.class public Lcom/google/android/settings/experiments/GServicesProxy;
.super Ljava/lang/Object;
.source "GServicesProxy.java"


# static fields
.field private static final PROXY_AUTHORITY:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.settings.intelligence.provider.serviceflags"

    .line 25
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/experiments/GServicesProxy;->PROXY_AUTHORITY:Landroid/net/Uri;

    return-void
.end method

.method private static buildRequest(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    .line 86
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    .line 41
    invoke-static {p1}, Lcom/google/android/settings/experiments/GServicesProxy;->buildRequest(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "default"

    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "getBooleanForKey"

    .line 43
    invoke-static {p0, v0, p1}, Lcom/google/android/settings/experiments/GServicesProxy;->getResult(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 1

    .line 74
    invoke-static {p1}, Lcom/google/android/settings/experiments/GServicesProxy;->buildRequest(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "default"

    .line 75
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "getLongForKey"

    .line 76
    invoke-static {p0, v0, p1}, Lcom/google/android/settings/experiments/GServicesProxy;->getResult(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getResult(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 92
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/settings/experiments/-$$Lambda$GServicesProxy$WB-SYSlwW4PUWurhQBoEDzCczHg;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-wide/16 v1, 0x64

    .line 95
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to query service flag provider for method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GServicesProxy"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {p1}, Lcom/google/android/settings/experiments/GServicesProxy;->buildRequest(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "getStringForKey"

    .line 54
    invoke-static {p0, v0, p1}, Lcom/google/android/settings/experiments/GServicesProxy;->getResult(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "default"

    .line 55
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getResult$0(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/google/android/settings/experiments/GServicesProxy;->PROXY_AUTHORITY:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
