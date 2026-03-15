.class public Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.super Ljava/lang/Object;
.source "NotificationChannelSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;
    }
.end annotation


# static fields
.field private static final CHANNEL_STATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_EXPANDED_ROW_COUNT:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DURATION_END_DAYS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DURATION_START_DAYS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_NOTIFICATION_SENT_COUNT:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->DURATION_START_DAYS:J

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->DURATION_END_DAYS:J

    .line 117
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->CHANNEL_STATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 147
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 148
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private buildRowSliceAction(Landroid/app/NotificationChannel;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/SliceAction;
    .locals 3

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    iget v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mUid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 262
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120a8b

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x579

    .line 265
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 268
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 270
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 268
    invoke-static {p0, p2, v2, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getAppAndNotificationPageIntent()Landroid/content/Intent;
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f12012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    .line 439
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 438
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 442
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getDisplayableChannels(Lcom/android/settings/notification/NotificationBackend$AppRow;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;-><init>(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    .line 349
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 351
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 356
    iget-object v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    .line 360
    :cond_0
    new-instance v3, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;

    invoke-direct {v3, v2, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;-><init>(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Landroid/app/NotificationChannel;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->CHANNEL_STATE_COMPARATOR:Ljava/util/Comparator;

    .line 365
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;

    .line 366
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-wide/16 v0, 0x3

    .line 367
    invoke-interface {p0, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    .line 368
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getEligibleNotificationsPackage(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 372
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 377
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 379
    new-instance v3, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageInfo;)V

    .line 381
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, p1

    move-object p1, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const-wide/16 v4, 0x64

    .line 390
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationBackend$AppRow;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "NotifChannelSlice"

    const-string v5, "Failed to get notification data."

    .line 392
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_2

    .line 396
    iget-boolean v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v4, :cond_2

    .line 397
    invoke-direct {p0, v3}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getDisplayableChannels(Lcom/android/settings/notification/NotificationBackend$AppRow;)Ljava/util/List;

    move-result-object v4

    .line 396
    invoke-direct {p0, v4}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->isAllChannelsBlocked(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 402
    :cond_3
    iget-object v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    iget v4, v4, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    if-le v4, v2, :cond_2

    .line 405
    iget-object p1, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 406
    iput-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    move v2, v4

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private getNoSuggestedAppHeader()Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f080155

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f120a73

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getAppAndNotificationPageIntent()Landroid/content/Intent;

    move-result-object v2

    .line 277
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getPrimarySliceAction(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 280
    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 281
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    .line 282
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    return-object v0
.end method

.method private getNotificationChannelRows(Landroidx/core/graphics/drawable/IconCompat;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/graphics/drawable/IconCompat;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getDisplayableChannels(Lcom/android/settings/notification/NotificationBackend$AppRow;)Ljava/util/List;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 290
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 291
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    .line 293
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    const/4 v6, 0x0

    .line 292
    invoke-static {v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 294
    invoke-direct {p0, v2, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->buildRowSliceAction(Landroid/app/NotificationChannel;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 295
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getToggleIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    .line 296
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    .line 295
    :cond_0
    invoke-static {v4, v5, v6}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 290
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPrimarySliceAction(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroidx/slice/builders/SliceAction;
    .locals 2

    .line 338
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 339
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 338
    invoke-static {p0, p1, v1, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getRecentlyInstalledPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->DURATION_START_DAYS:J

    sub-long/2addr v0, v2

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->DURATION_END_DAYS:J

    sub-long/2addr v2, v4

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 321
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 323
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 324
    invoke-virtual {p0, v7}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->isUserInteracted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    iget-wide v7, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v9, v7, v0

    if-ltz v9, :cond_0

    cmp-long v7, v7, v2

    if-gtz v7, :cond_0

    .line 330
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private getToggleIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    const-string v2, "package_name"

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mUid:I

    const-string v2, "package_uid"

    .line 307
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "channel_id"

    .line 308
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 310
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isAllChannelsBlocked(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)Z"
        }
    .end annotation

    .line 414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 415
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isChannelBlockable(Landroid/app/NotificationChannel;Lcom/android/settings/notification/NotificationBackend$AppRow;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 470
    iget-boolean p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result p2

    if-nez p2, :cond_1

    .line 475
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move p0, v0

    :cond_2
    return p0
.end method

.method private isChannelConfigurable(Landroid/app/NotificationChannel;Lcom/android/settings/notification/NotificationBackend$AppRow;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isChannelEnabled(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannel;Lcom/android/settings/notification/NotificationBackend$AppRow;)Z
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mUid:I

    .line 449
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 453
    invoke-direct {p0, p2, p3}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->isChannelBlockable(Landroid/app/NotificationChannel;Lcom/android/settings/notification/NotificationBackend$AppRow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, p2, p3}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->isChannelConfigurable(Landroid/app/NotificationChannel;Lcom/android/settings/notification/NotificationBackend$AppRow;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getDisplayableChannels$3(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;)Landroid/app/NotificationChannel;
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;)I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->getNotificationsSentState()Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->getNotificationsSentState()Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    move-result-object v1

    .line 121
    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    if-eq v1, v0, :cond_0

    sub-int/2addr v1, v0

    return v1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method getApplicationIcon(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "NotifChannelSlice"

    const-string p1, "No such package to get application icon."

    .line 239
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method getApplicationUid(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    .line 250
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    .line 252
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mUid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v1, 0x7f120ae4

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x579

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 7

    .line 153
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 155
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 162
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getRecentlyInstalledPackages()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getEligibleNotificationsPackage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getNoSuggestedAppHeader()Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 166
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getApplicationUid(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mUid:I

    .line 171
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getApplicationIcon(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 172
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f12093d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    .line 173
    invoke-static {v3, v5}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 172
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 175
    invoke-virtual {v3, v1, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 176
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mUid:I

    .line 177
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getSubTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getPrimarySliceAction(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 174
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 181
    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->getNotificationChannelRows(Landroidx/core/graphics/drawable/IconCompat;)Ljava/util/List;

    move-result-object p0

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 183
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method protected getSubTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f120ac4

    new-array v0, v0, [Ljava/lang/Object;

    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    .line 426
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 430
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10002f

    new-array v0, v0, [Ljava/lang/Object;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    .line 430
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 191
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->NOTIFICATION_CHANNEL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected isUserInteracted(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$getDisplayableChannels$1$NotificationChannelSlice(Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 350
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->isChannelEnabled(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannel;Lcom/android/settings/notification/NotificationBackend$AppRow;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getDisplayableChannels$2$NotificationChannelSlice(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannelGroup;)Ljava/util/stream/Stream;
    .locals 2

    .line 349
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;-><init>(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 196
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "package_name"

    .line 197
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_uid"

    const/4 v4, -0x1

    .line 198
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "channel_id"

    .line 199
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v4, v2, v3, p1}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 203
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v0, 0x4

    .line 204
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 205
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void
.end method
