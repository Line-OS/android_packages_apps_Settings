.class public Lcom/android/settings/slices/SettingsSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "SettingsSliceProvider.java"


# static fields
.field private static final KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;


# instance fields
.field final mPinnedWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation
.end field

.field mSliceWeakDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field

.field mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    sput-object v0, Lcom/android/settings/slices/SettingsSliceProvider;->KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    .line 132
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    return-void
.end method

.method private buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 372
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "action"

    .line 374
    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 377
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 379
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 0

    .line 425
    new-instance p0, Landroidx/slice/Slice$Builder;

    invoke-direct {p0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private getSpecialCaseOemUris()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Landroid/net/Uri;

    .line 444
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSpecialCasePlatformUris()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Landroid/net/Uri;

    .line 436
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSpecialCaseUris(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCasePlatformUris()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseOemUris()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static grantWhitelistedPackagePermissions(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SettingsSliceProvider"

    if-nez p1, :cond_0

    const-string v1, "No descendants to grant permission with, skipping."

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 319
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Whitelisting %d uris to %d pkgs."

    .line 323
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceManager;

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 329
    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 330
    invoke-virtual {p0, v5, v0}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "No packages to whitelist, skipping."

    .line 320
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$shutdown$2()V
    .locals 0

    .line 364
    invoke-static {}, Lcom/android/settings/slices/SliceBackgroundWorker;->shutdown()V

    return-void
.end method

.method private parseStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, ":"

    .line 481
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 482
    array-length p1, p0

    if-lez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V
    .locals 2

    .line 336
    invoke-interface {p1}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 345
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting background worker for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    invoke-static {v0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/content/Context;Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p1

    .line 348
    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceBackgroundWorker;->onSlicePinned()V

    return-void
.end method

.method private stopBackgroundWorker(Landroid/net/Uri;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SliceBackgroundWorker;

    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping background worker for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsSliceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->onSliceUnpinned()V

    .line 357
    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getBlockedKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blocked_slices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 468
    :try_start_0
    sget-object v2, Lcom/android/settings/slices/SettingsSliceProvider;->KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    invoke-direct {p0, v0}, Lcom/android/settings/slices/SettingsSliceProvider;->parseStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "SettingsSliceProvider"

    const-string v2, "Bad Settings Slices Whitelist flags"

    .line 470
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public synthetic lambda$loadSlice$3$SettingsSliceProvider(Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$loadSliceInBackground$4$SettingsSliceProvider(Landroid/net/Uri;)V
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSlice(Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onSlicePinned$0$SettingsSliceProvider(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onSliceUnpinned$1$SettingsSliceProvider(Landroid/net/Uri;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->stopBackgroundWorker(Landroid/net/Uri;)V

    return-void
.end method

.method loadSlice(Landroid/net/Uri;)V
    .locals 6

    const-string v0, "SettingsSliceProvider"

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {v3, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 397
    invoke-static {v4, v3}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v4

    .line 400
    invoke-interface {v4}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 402
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 405
    :cond_0
    new-instance v5, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$ISwEHXerr-chOOniQJihO5wQowM;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$ISwEHXerr-chOOniQJihO5wQowM;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 407
    iget-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Built slice ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") in: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 410
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create slicedata for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method loadSliceInBackground(Landroid/net/Uri;)V
    .locals 1

    .line 416
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$W2HMVqm5M6j2SQCcwD2jngF8yiE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$W2HMVqm5M6j2SQCcwD2jngF8yiE;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 3

    .line 176
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 180
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getBlockedKeys()Ljava/util/Set;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "SettingsSliceProvider"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested blocked slice with Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 192
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 194
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object p0

    .line 196
    invoke-interface {p0}, Lcom/android/settings/slices/CustomSliceable;->getSlice()Landroidx/slice/Slice;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 199
    :cond_2
    :try_start_2
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 204
    :cond_3
    :try_start_3
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 206
    :cond_4
    :try_start_4
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 208
    :cond_5
    :try_start_5
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewEnhanced4gLteSliceHelper(Landroid/content/Context;)Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

    move-result-object p0

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->createEnhanced4gLteSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 213
    :cond_6
    :try_start_6
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 214
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p0

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingPreferenceSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 220
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/SliceData;

    if-nez v1, :cond_8

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 227
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getPinnedSlices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 228
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    .line 306
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 137
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    .line 138
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    const/4 p0, 0x1

    return p0
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "android.settings.slices"

    if-eqz v2, :cond_1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    iget-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceKeys(Z)Ljava/util/List;

    move-result-object p1

    .line 274
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceKeys(Z)Ljava/util/List;

    move-result-object v2

    .line 276
    invoke-direct {p0, p1, v3}, Lcom/android/settings/slices/SettingsSliceProvider;->buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "com.android.settings.slices"

    .line 277
    invoke-direct {p0, v2, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-direct {p0, v1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseUris(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-direct {p0, v4}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseUris(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "/action"

    .line 286
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/intent"

    .line 287
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 294
    :cond_2
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 295
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {v2, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceKeys(Z)Ljava/util/List;

    move-result-object v2

    .line 296
    invoke-direct {p0, v2, v1}, Lcom/android/settings/slices/SettingsSliceProvider;->buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseUris(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/slices/SettingsSliceProvider;->grantWhitelistedPackagePermissions(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 2

    .line 144
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 152
    :cond_0
    new-instance v1, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 159
    :cond_2
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 165
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->unregisterReceivers(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V
    .locals 1

    .line 457
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceRelayReceiver;

    invoke-static {p0, p2, v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->registerReceiver(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 363
    sget-object p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$dtN4YKg1hM1DvH4evBK441R18PY;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$dtN4YKg1hM1DvH4evBK441R18PY;

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
