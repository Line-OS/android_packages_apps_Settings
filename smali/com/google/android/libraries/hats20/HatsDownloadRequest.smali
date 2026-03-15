.class public Lcom/google/android/libraries/hats20/HatsDownloadRequest;
.super Ljava/lang/Object;
.source "HatsDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
    }
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final baseDownloadUrl:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final siteContext:Ljava/lang/String;

.field private final siteId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->access$000(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->access$100(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->siteContext:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->access$200(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->siteId:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->access$300(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->advertisingId:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->access$400(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->baseDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;Lcom/google/android/libraries/hats20/HatsDownloadRequest$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;-><init>(Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;
    .locals 2

    .line 60
    new-instance v0, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;-><init>(Landroid/content/Context;Lcom/google/android/libraries/hats20/HatsDownloadRequest$1;)V

    return-object v0
.end method


# virtual methods
.method computeDownloadUri()Landroid/net/Uri;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->baseDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "lang"

    const-string v2, "EN"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->siteId:Ljava/lang/String;

    const-string v2, "site"

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->advertisingId:Ljava/lang/String;

    const-string v2, "adid"

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->siteContext:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "sc"

    .line 50
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->context:Landroid/content/Context;

    return-object p0
.end method

.method getSiteId()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->siteId:Ljava/lang/String;

    return-object p0
.end method
