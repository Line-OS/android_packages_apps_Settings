.class public Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "ContextualCardLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/List<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
        ">;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_CARD_COUNT:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mNotifyUri:Landroid/net/Uri;

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;

    new-instance v1, Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mObserver:Landroid/database/ContentObserver;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private isLargeCard(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 1

    .line 185
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object p0

    sget-object p1, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_NOTIFICATION_CHANNEL_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method filterEligibleCards(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 166
    new-instance v3, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    const-wide/16 v1, 0xfa

    .line 172
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-eqz p1, :cond_1

    .line 175
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "ContextualCardLoader"

    const-string v2, "Failed to get eligible state for card, likely timeout. Skipping"

    .line 178
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method getContextualCardsFromProvider()Landroid/database/Cursor;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getContextualCards()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method getDisplayableCards(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->filterEligibleCards(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 138
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object p1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->DELETE_CARD_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mNotifyUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    .line 148
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    const/16 v2, 0x680

    .line 150
    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardListLog(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ContextualCardLoader"

    const-string v1, "Skipping - in legacy suggestion mode"

    .line 108
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->getContextualCardsFromProvider()Landroid/database/Cursor;

    move-result-object v1

    .line 112
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-direct {v2, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Landroid/database/Cursor;)V

    .line 115
    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isCustomCard()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->isLargeCard(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsLargeCard(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->getDisplayableCards(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 124
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 84
    invoke-super {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStartLoading()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mNotifyUri:Landroid/net/Uri;

    .line 86
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->REFRESH_CARD_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->DELETE_CARD_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStopLoading()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
