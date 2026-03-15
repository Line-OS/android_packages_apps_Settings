.class public Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentNotifyingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "all_notifications_divider"

.field static final KEY_SEE_ALL:Ljava/lang/String; = "all_notifications"

.field private static final SKIP_SYSTEM_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field

.field private mCal:Ljava/util/Calendar;

.field private mCategory:Landroidx/preference/PreferenceCategory;

.field private mDivider:Landroidx/preference/Preference;

.field private final mHost:Landroidx/fragment/app/Fragment;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mSeeAllPref:Landroidx/preference/Preference;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field protected mUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V
    .locals 7

    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p5}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p5

    :goto_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    iput-object p6, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 108
    iput-object p5, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 109
    iput-object p2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 110
    iput-object p3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p4, p1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private displayOnlyAllAppsLink()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const v2, 0x7f120ae4

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_notifications"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private displayRecentApps(Landroid/content/Context;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 225
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    const v2, 0x7f120c26

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 226
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 227
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const v3, 0x7f080104

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setIcon(I)V

    .line 232
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 233
    iget-object v3, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 235
    iget-object v6, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 236
    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "all_notifications"

    .line 237
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 238
    check-cast v6, Lcom/android/settings/notification/NotificationAppPreference;

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    move-object/from16 v6, p2

    .line 243
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/NotifyingApp;

    .line 245
    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 246
    iget-object v9, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 247
    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v9

    if-nez v9, :cond_2

    move-object/from16 v11, p1

    goto/16 :goto_3

    .line 253
    :cond_2
    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v10

    invoke-static {v10, v8}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/notification/NotificationAppPreference;

    if-nez v10, :cond_3

    .line 256
    new-instance v10, Lcom/android/settings/notification/NotificationAppPreference;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Lcom/android/settings/notification/NotificationAppPreference;-><init>(Landroid/content/Context;)V

    move v12, v4

    goto :goto_2

    :cond_3
    move-object/from16 v11, p1

    move v12, v2

    .line 259
    :goto_2
    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v13

    invoke-static {v13, v8}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 260
    iget-object v13, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v13, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v14, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v14}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x2

    .line 262
    invoke-virtual {v10, v13}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    .line 263
    iget-object v13, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    .line 263
    invoke-static {v13, v14, v15, v2}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v10, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 266
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v13, "package"

    .line 267
    invoke-virtual {v7, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v13, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "uid"

    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    new-instance v13, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$dQunHGEGFX2f24KdzEd4pihLnrA;

    invoke-direct {v13, v0, v7, v9}, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$dQunHGEGFX2f24KdzEd4pihLnrA;-><init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Landroid/os/Bundle;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v10, v13}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    iget-object v7, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v13, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v14, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v13, v14}, Lcom/android/settings/notification/NotificationBackend;->isBlockable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    .line 281
    new-instance v7, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;-><init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v10, v7}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    iget-object v7, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 288
    invoke-virtual {v7, v8, v9}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v7

    xor-int/2addr v7, v2

    .line 287
    invoke-virtual {v10, v7}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    if-nez v12, :cond_4

    .line 291
    iget-object v7, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 295
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 296
    iget-object v3, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_6
    return-void
.end method

.method private getDisplayableRecentAppList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    .line 305
    iget-object v5, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 306
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v7

    .line 305
    invoke-virtual {v5, v6, v7}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->shouldIncludePkgInRecents(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_0

    :cond_3
    return-object v0
.end method

.method static getKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private shouldIncludePkgInRecents(Ljava/lang/String;I)Z
    .locals 3

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 334
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 335
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not a user visible or instant app, skipping "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentNotisCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "all_notifications"

    .line 140
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const-string v0, "all_notifications_divider"

    .line 141
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    .line 142
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "recent_notifications_category"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayRecentApps$0$RecentNotifyingAppsPreferenceController(Landroid/os/Bundle;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    .line 270
    new-instance p3, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p3, 0x7f120ae4

    .line 272
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 274
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x85

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayRecentApps$1$RecentNotifyingAppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 282
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    .line 283
    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    return p4
.end method

.method refreshUi(Landroid/content/Context;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->reloadData()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getDisplayableRecentAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->displayRecentApps(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->displayOnlyAllAppsLink()V

    :goto_0
    return-void
.end method

.method reloadData()V
    .locals 10

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCal:Ljava/util/Calendar;

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v9, 0x0

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move v7, v1

    .line 172
    invoke-interface/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 175
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-eqz v9, :cond_0

    .line 178
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 180
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 181
    :cond_1
    :goto_2
    invoke-virtual {v9}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {v9, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 184
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 186
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    if-nez v4, :cond_2

    .line 188
    new-instance v4, Landroid/service/notification/NotifyingApp;

    invoke-direct {v4}, Landroid/service/notification/NotifyingApp;-><init>()V

    .line 189
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/notification/NotifyingApp;->setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;

    .line 191
    invoke-virtual {v4, v1}, Landroid/service/notification/NotifyingApp;->setUserId(I)Landroid/service/notification/NotifyingApp;

    .line 193
    :cond_2
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 194
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/service/notification/NotifyingApp;->setLastNotified(J)Landroid/service/notification/NotifyingApp;

    goto :goto_2

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    const-string p0, "recent_notifications_category"

    .line 133
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "all_notifications_divider"

    .line 134
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120c27

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
