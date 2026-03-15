.class public Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameDriverAppPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;
    }
.end annotation


# instance fields
.field private final appInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDevOptInApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevOptOutApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevPrereleaseOptInApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryList:[Ljava/lang/CharSequence;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

.field private final mPreferenceDefault:Ljava/lang/String;

.field private final mPreferenceGameDriver:Ljava/lang/String;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mPreferencePrereleaseDriver:Ljava/lang/String;

.field private final mPreferenceSystem:Ljava/lang/String;

.field private final mPreferenceTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    new-instance p2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;-><init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->appInfoComparator:Ljava/util/Comparator;

    .line 82
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    new-instance p2, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance v0, Landroid/os/Handler;

    .line 85
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030077

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    const v0, 0x7f1206ed

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceTitle:Ljava/lang/String;

    const v0, 0x7f1206e9

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    const v0, 0x7f1206ea

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    const v0, 0x7f1206eb

    .line 94
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    const v0, 0x7f1206ec

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getAppInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mAppInfos:Ljava/util/List;

    .line 101
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "game_driver_opt_in_apps"

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    .line 103
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "game_driver_prerelease_opt_in_apps"

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    .line 105
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "game_driver_opt_out_apps"

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    return-void
.end method

.method private getAppInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 211
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 212
    new-instance v3, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;-><init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->appInfoComparator:Ljava/util/Comparator;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 225
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 228
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p0, ""

    .line 229
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method protected createListPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/ListPreference;
    .locals 1

    .line 243
    new-instance v0, Landroidx/preference/ListPreference;

    invoke-direct {v0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 124
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;

    .line 126
    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v3, v1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    .line 127
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->createListPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/ListPreference;

    move-result-object v1

    .line 126
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_driver_all_apps"

    .line 112
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public onGameDriverContentChanged()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 148
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 149
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    :goto_0
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    const-string v0, ","

    .line 177
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "game_driver_opt_in_apps"

    .line 176
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    .line 180
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "game_driver_prerelease_opt_in_apps"

    .line 178
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    .line 182
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "game_driver_opt_out_apps"

    .line 181
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
