.class public abstract Lcom/android/settings/notification/NotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NotificationPreferenceController.java"


# instance fields
.field protected mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected final mContext:Landroid/content/Context;

.field protected final mNm:Landroid/app/NotificationManager;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mNm:Landroid/app/NotificationManager;

    .line 60
    iput-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 61
    iget-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method protected checkCanBeVisible(I)Z
    .locals 3

    .line 97
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ChannelPrefContr"

    const-string p1, "No channel"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/16 v1, -0x3e8

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    if-lt p0, p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method protected hasValidGroup()Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    return v1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    .line 82
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0
.end method

.method protected isChannelBlockable()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    .line 123
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isChannelGroupBlockable()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result p0

    return p0
.end method

.method protected isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 144
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_1

    .line 145
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected final isDefaultChannel()Z
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 91
    iput-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 92
    iput-object p3, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 93
    iput-object p4, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method protected saveChannel()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
