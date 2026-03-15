.class public Lcom/google/android/libraries/hats20/network/GcsRequest;
.super Ljava/lang/Object;
.source "GcsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;
    }
.end annotation


# static fields
.field public static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private final hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

.field private final postData:Ljava/lang/String;

.field private final requestUriWithNoParams:Landroid/net/Uri;

.field private final responseListener:Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "Mozilla/5.0; Hats App/v%d (Android %s; SDK %d; %s; %s; %s)"

    .line 26
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/hats20/network/GcsRequest;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;Landroid/net/Uri;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->responseListener:Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;

    .line 52
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->postData:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->requestUriWithNoParams:Landroid/net/Uri;

    .line 54
    iput-object p3, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    return-void
.end method


# virtual methods
.method public send()V
    .locals 8

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->requestUriWithNoParams:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 64
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "POST"

    .line 66
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    .line 67
    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->postData:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "Content-Length"

    .line 69
    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "charset"

    .line 70
    invoke-virtual {v4, v6, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v6, "close"

    .line 71
    invoke-virtual {v4, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    .line 74
    sget-object v6, Lcom/google/android/libraries/hats20/network/GcsRequest;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 76
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 79
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HatsLibGcsRequest"

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x37

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Downloaded "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes in "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->responseListener:Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "GCS responded with no data. The site\'s publishing state may not be Enabled. Check Site > Advanced settings > Publishing state. For more info, see go/get-hats"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;->onError(Ljava/lang/Exception;)V

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    iget-object v2, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->requestUriWithNoParams:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->storeSetCookieHeaders(Landroid/net/Uri;Ljava/util/Map;)V

    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "responseCode"

    .line 99
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "expirationDate"

    .line 100
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 101
    new-instance v1, Lcom/google/android/libraries/hats20/network/GcsResponse;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 105
    :goto_1
    invoke-direct {v1, v2, v5, v6, v0}, Lcom/google/android/libraries/hats20/network/GcsResponse;-><init>(IJLjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->responseListener:Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;->onSuccess(Lcom/google/android/libraries/hats20/network/GcsResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 111
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 108
    :goto_2
    :try_start_2
    iget-object p0, p0, Lcom/google/android/libraries/hats20/network/GcsRequest;->responseListener:Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;

    invoke-interface {p0, v0}, Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;->onError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw p0
.end method
