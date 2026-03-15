.class public Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestSeeAllPreferenceController.java"


# instance fields
.field private mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceCategory;

.field private final mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

.field private mPreference:Landroidx/preference/Preference;

.field private mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

.field private mShowSystem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/RecentLocationApps;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/RecentLocationApps;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mShowSystem:Z

    .line 56
    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    .line 57
    iput-object p4, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    return-void
.end method


# virtual methods
.method createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settingslib/widget/apppreference/AppPreference;
    .locals 2

    .line 100
    new-instance v0, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object p1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    new-instance p1, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object p0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "all_recent_location_requests"

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "all_recent_location_requests"

    return-object p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setShowSystem(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mShowSystem:Z

    .line 112
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 80
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 81
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mShowSystem:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance p1, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120888

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
