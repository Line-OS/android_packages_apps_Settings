.class Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 181
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method protected setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method public setListening(Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationBackend;->getBlockedAppCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f12014b

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100009

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 200
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
