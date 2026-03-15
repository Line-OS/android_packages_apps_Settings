.class public Lcom/android/settings/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationBackend$AppRow;,
        Lcom/android/settings/notification/NotificationBackend$Row;,
        Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;
    }
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;

.field static sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "usagestats"

    .line 58
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    const-string v0, "notification"

    .line 61
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 437
    iget p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    int-to-float p0, p0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    .line 438
    iget p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    .line 439
    iput p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    :cond_0
    return-void
.end method

.method public static getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 420
    iget-wide v1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    const p1, 0x7f120ae1

    .line 421
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 424
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide p1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    sub-long/2addr v1, p1

    long-to-double p1, v1

    .line 423
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 426
    :cond_2
    iget p2, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    const/4 v1, 0x0

    if-lez p2, :cond_3

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f100033

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 427
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 430
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f100034

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 430
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 113
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 115
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ":"

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 122
    iput-boolean v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    iput-boolean v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public allowAssistantAdjustment(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 343
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->allowAssistantAdjustment(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->disallowAssistantAdjustment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 348
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public canBubble(Ljava/lang/String;I)Z
    .locals 0

    .line 189
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areBubblesAllowedForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 191
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 0

    .line 170
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 172
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .locals 2

    .line 446
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 448
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 354
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 356
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getBlockedAppCount()I
    .locals 2

    .line 316
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->getBlockedAppCount(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 318
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 0

    .line 280
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 282
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
    .locals 2

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    .line 212
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string p3, "Error calling NoMan"

    .line 214
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getChannelCount(Ljava/lang/String;I)I
    .locals 1

    const/4 p0, 0x0

    .line 298
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p0}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 300
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 0

    .line 271
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 273
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 1

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    .line 224
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p3, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string p3, "Error calling NoMan"

    .line 226
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 233
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 235
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 246
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 248
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 0

    .line 144
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 147
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getNumAppsBypassingDnd(I)I
    .locals 1

    .line 307
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getAppsBypassingDndCount(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 309
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isBlockable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 85
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

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

.method public isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 8

    .line 130
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 132
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/app/role/RoleManager;

    .line 133
    new-instance p2, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {p2}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    .line 135
    iget-boolean p0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 7

    .line 92
    iget-object v0, p4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-object v0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 3

    .line 64
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 65
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 66
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 68
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading application label for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationBackend"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 73
    :goto_0
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 75
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->canShowBadge(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    .line 76
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->canBubble(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->allowBubbles:Z

    .line 77
    iget p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 78
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    .line 79
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/NotificationBackend;->recordAggregatedUsageEvents(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-object v0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 0

    .line 289
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 291
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected recordAggregatedUsageEvents(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 7

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    .line 385
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    iput-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-eqz p1, :cond_4

    .line 387
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p1, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 391
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 394
    iget-object v2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-nez v2, :cond_1

    .line 396
    new-instance v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    .line 397
    iget-object v3, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 400
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    .line 401
    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    .line 403
    :cond_2
    iget v1, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    .line 404
    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    iget v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    .line 405
    invoke-direct {p0, v2}, Lcom/android/settings/notification/NotificationBackend;->calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V

    goto :goto_0

    .line 410
    :cond_3
    iget-object p1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationBackend;->calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V

    :cond_4
    return-void
.end method

.method protected recordAggregatedUsageEvents(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 8

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v0, 0x240c8400

    sub-long v1, v3, v0

    .line 375
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget v5, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    iget-object v6, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    .line 380
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->recordAggregatedUsageEvents(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-void
.end method

.method recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    iput-boolean p0, p5, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 100
    iget-object p0, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/app/role/RoleManager;->getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string p2, "android.app.role.DIALER"

    .line 101
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.app.role.EMERGENCY"

    .line 102
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 103
    iput-boolean p0, p5, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1070056

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 107
    iget-object p1, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p5, p1}, Lcom/android/settings/notification/NotificationBackend;->markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowBubbles(Ljava/lang/String;IZ)Z
    .locals 0

    .line 198
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 201
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setNotificationAssistantGranted(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 p0, 0x0

    .line 455
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    if-nez p1, :cond_1

    .line 457
    sget-object p1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p1}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    move p0, v1

    :cond_0
    return p0

    .line 459
    :cond_1
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 462
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "miscellaneous"

    .line 156
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz p3, :cond_0

    const/16 v2, -0x3e8

    goto :goto_0

    :cond_0
    move v2, v0

    .line 157
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 158
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 160
    :cond_1
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 163
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)Z
    .locals 0

    .line 179
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 182
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHideSilentStatusBarIcons(Landroid/content/Context;)Z
    .locals 1

    .line 325
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 327
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public showSilentInStatusBar(Ljava/lang/String;)Z
    .locals 1

    .line 363
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 365
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 0

    .line 255
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 257
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 0

    .line 263
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 265
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
