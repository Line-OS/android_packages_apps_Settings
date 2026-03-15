.class public Lcom/android/settings/datetime/timezone/TimeZoneSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TimeZoneSettings.java"


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mPendingZonePickerRequestResult:Landroid/content/Intent;

.field private mSelectByRegion:Z

.field private mSelectedTimeZoneId:Ljava/lang/String;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private findRegionIdForTzId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 353
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "time_zone_region"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLocaleRegionId()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocaleRegionId()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isFixedOffset(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Etc/GMT"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Etc/UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static synthetic lambda$Ah3tL-2LTanl7tTAw64r8xCK07o(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startFixedOffsetPicker()V

    return-void
.end method

.method public static synthetic lambda$CFHMJtb3KFCwNTuhyOFedUZcT20(Lcom/android/settings/datetime/timezone/TimeZoneSettings;Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    return-void
.end method

.method public static synthetic lambda$fBefFKEAVxzXT5oriz7X9NJj6a0(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onRegionZonePreferenceClicked()V

    return-void
.end method

.method public static synthetic lambda$vqMeoCUXFQsF8oLE4z3Gn5iFYMM(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startRegionPicker()V

    return-void
.end method

.method private onFixedOffsetZoneChanged(Ljava/lang/String;)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void
.end method

.method private onRegionZonePreferenceClicked()V
    .locals 3

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    const-class v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-class v1, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method private onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 166
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setupForCurrentTimeZone()V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.settings.datetime.timezone.result_region_id"

    .line 232
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    .line 233
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 235
    const-class v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 236
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 248
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void

    .line 243
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown time zone id is selected: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeZoneSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "time_zone_region"

    if-nez p1, :cond_0

    .line 268
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class p1, Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, p2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V
    .locals 2

    .line 222
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-class v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    .line 224
    invoke-virtual {v1, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    goto :goto_0

    .line 226
    :cond_0
    const-class p1, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private setDisplayedRegion(Ljava/lang/String;)V
    .locals 1

    .line 202
    const-class v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setRegionId(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {v0, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p2

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 209
    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    .line 211
    const-class v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {v0, p2}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 214
    const-class v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 214
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setClickable(Z)V

    .line 216
    const-class p1, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V
    .locals 1

    .line 377
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p0, 0x0

    .line 378
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 379
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSelectByRegion(Z)V
    .locals 2

    .line 321
    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    const-string v0, "time_zone_region_preference_category"

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    const-string v0, "time_zone_fixed_offset_preference_category"

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLocaleRegionId()Ljava/lang/String;

    move-result-object p1

    .line 327
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getRegionIds()Ljava/util/Set;

    move-result-object v0

    .line 329
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 330
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 340
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setupForCurrentTimeZone()V
    .locals 1

    .line 307
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void
.end method

.method private startFixedOffsetPicker()V
    .locals 3

    .line 187
    const-class v0, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method private startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 195
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 197
    invoke-virtual {p1, p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private startRegionPicker()V
    .locals 3

    .line 176
    const-class v0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    .line 99
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v2, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$vqMeoCUXFQsF8oLE4z3Gn5iFYMM;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$vqMeoCUXFQsF8oLE4z3Gn5iFYMM;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 104
    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v3, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$fBefFKEAVxzXT5oriz7X9NJj6a0;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$fBefFKEAVxzXT5oriz7X9NJj6a0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 107
    new-instance v3, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance p1, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$Ah3tL-2LTanl7tTAw64r8xCK07o;

    invoke-direct {p1, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$Ah3tL-2LTanl7tTAw64r8xCK07o;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v3, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryCodesForZoneId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 360
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 363
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    if-eqz p3, :cond_2

    .line 366
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    .line 370
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TimeZoneSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x203

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500ad

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "com.android.settings.datetime.timezone.result_time_zone_id"

    .line 148
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 150
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onFixedOffsetZoneChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez p1, :cond_3

    .line 141
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "time_zone_region_preference_category"

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    const-string p1, "time_zone_fixed_offset_preference_category"

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$CFHMJtb3KFCwNTuhyOFedUZcT20;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$CFHMJtb3KFCwNTuhyOFedUZcT20;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    const/4 p0, 0x0

    .line 127
    invoke-virtual {p1, v0, p0, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f12133d

    .line 278
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f12133c

    .line 279
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 280
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startFixedOffsetPicker()V

    return v0

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startRegionPicker()V

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v0, 0x1

    .line 286
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 287
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method setTimeZoneData(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    return-void
.end method
