.class public Lcom/google/android/libraries/hats20/storage/HatsDataStore;
.super Ljava/lang/Object;
.source "HatsDataStore.java"


# static fields
.field static final MAX_DAYS_UNTIL_EXPIRATION:I = 0x7

.field private static final MILLIS_TO_CACHE_FAILED_DOWNLOAD:J

.field static final SHARED_PREF_SET_COOKIE_URI:Ljava/lang/String; = "SET_COOKIE_URI"

.field static final SHARED_PREF_SET_COOKIE_VALUE:Ljava/lang/String; = "SET_COOKIE_VALUE"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->MILLIS_TO_CACHE_FAILED_DOWNLOAD:J

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;
    .locals 1

    .line 71
    new-instance v0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method private static getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 127
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.google.android.libraries.hats20"

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private getSurveyExpirationDate(Ljava/lang/String;)J
    .locals 2

    .line 343
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "EXPIRATION_DATE"

    .line 344
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static isSetCookieHeader(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 306
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "Set-Cookie"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private storeSetCookieHeaderValueSet(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 300
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SET_COOKIE_URI"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "SET_COOKIE_VALUE"

    .line 301
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 302
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public forTestingClearAllData()V
    .locals 2

    .line 264
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object p0

    .line 266
    instance-of v0, p0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    .line 267
    check-cast p0, Ljava/net/CookieManager;

    invoke-virtual {p0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p0

    invoke-interface {p0}, Ljava/net/CookieStore;->removeAll()Z

    goto :goto_1

    :cond_0
    const-string v0, "Unknown cookie manager type, could not clear cookies: "

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "HatsLibDataStore"

    .line 269
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public forTestingInjectSurveyIntoStorage(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "RESPONSE_CODE"

    .line 247
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p3, "EXPIRATION_DATE"

    .line 248
    invoke-static {p1, p3}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p3, "CONTENT"

    .line 249
    invoke-static {p1, p3}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 250
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getSurveyExpirationDate(Ljava/lang/String;I)J
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RESPONSE_CODE"

    .line 159
    invoke-static {p1, v1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getSurveyExpirationDate(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public getSurveyJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "CONTENT"

    .line 226
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 225
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeSurvey(Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "EXPIRATION_DATE"

    .line 169
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "RESPONSE_CODE"

    .line 170
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CONTENT"

    .line 171
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeSurveyIfExpired(Ljava/lang/String;)V
    .locals 6

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getSurveyExpirationDate(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 141
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "RESPONSE_CODE"

    .line 142
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CONTENT"

    .line 143
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 144
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->removeSurvey(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreCookiesFromPersistence()V
    .locals 5

    .line 317
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    const-string v1, "HatsLibDataStore"

    if-nez v0, :cond_0

    const-string p0, "Cannot restore cookies: Application does not have a cookie jar installed."

    .line 318
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SET_COOKIE_URI"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "SET_COOKIE_VALUE"

    .line 322
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v2

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "Set-Cookie"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-static {v0, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 329
    invoke-virtual {v2, v3, p0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to restore cookies from persistence."

    .line 334
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "No cookies found in persistence."

    .line 325
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveFailedDownload(Ljava/lang/String;)V
    .locals 4

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->MILLIS_TO_CACHE_FAILED_DOWNLOAD:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 116
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "RESPONSE_CODE"

    .line 117
    invoke-static {p1, v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "EXPIRATION_DATE"

    .line 119
    invoke-static {p1, v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CONTENT"

    .line 121
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 123
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSuccessfulDownload(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x5

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 97
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "RESPONSE_CODE"

    .line 98
    invoke-static {p5, v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "EXPIRATION_DATE"

    .line 99
    invoke-static {p5, p1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 99
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "CONTENT"

    .line 101
    invoke-static {p5, p1}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public storeSetCookieHeaders(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 278
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    invoke-static {v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->isSetCookieHeader(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance p2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->storeSetCookieHeaderValueSet(Landroid/net/Uri;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public surveyExists(Ljava/lang/String;)Z
    .locals 5

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "RESPONSE_CODE"

    .line 205
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 204
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "HatsLibDataStore"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string p1, "Checking if survey exists, Site ID %s was not in shared preferences."

    .line 209
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 213
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "Checking if survey exists, Site ID %s has response code %d in shared preferences."

    .line 212
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public validSurveyExists(Ljava/lang/String;)Z
    .locals 4

    .line 180
    iget-object p0, p0, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "RESPONSE_CODE"

    .line 181
    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->getKeyForPrefSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 180
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "HatsLibDataStore"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Checking for survey to show, Site ID %s was not in shared preferences."

    .line 185
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Checking for survey to show, Site ID %s has response code %d in shared preferences."

    .line 188
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method
