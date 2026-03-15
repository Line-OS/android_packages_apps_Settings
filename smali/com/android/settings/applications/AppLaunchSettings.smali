.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

.field private mAppLinkState:Landroidx/preference/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 61
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppLaunchSettings;I)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result p0

    return p0
.end method

.method private buildStateDropDown()V
    .locals 7

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    const v5, 0x7f12013d

    .line 129
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f12013e

    .line 130
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f12013f

    .line 131
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 128
    invoke-virtual {v0, v4}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 133
    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    iget-boolean v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->linkStateToIndex(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/applications/AppLaunchSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 4

    .line 100
    sget-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object p0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object p1, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/high16 v1, 0x20000

    .line 101
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 105
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 106
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private linkStateToIndex(I)I
    .locals 1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateAppLinkState(I)Z
    .locals 4

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 176
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 177
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const-string p0, "AppLaunchSettings"

    const-string p1, "Couldn\'t update intent verification status!"

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150063

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_launch_supported_domain_urls"

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AppDomainsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    const-string p1, "app_launch_clear_defaults"

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    const-string p1, "app_link_state"

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/DropDownPreference;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 83
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 87
    iget-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/settings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    array-length p1, p1

    new-array p1, p1, [I

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected refreshUi()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    const/4 p0, 0x1

    return p0
.end method
