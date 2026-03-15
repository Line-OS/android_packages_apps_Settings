.class public Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RecentLocationRequestSeeAllFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mController:Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

.field private mHideSystemMenu:Landroid/view/MenuItem;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment$1;

    invoke-direct {v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystem:Z

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 100
    iput-object v1, p2, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

    :cond_0
    return-object v0
.end method

.method private updateMenu()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystem:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystem:Z

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecentLocationReqAll"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x52d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150066

    return p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f1209a1

    .line 129
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f120997

    .line 131
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    .line 133
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->updateMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 77
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystem:Z

    .line 78
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->updateMenu()V

    .line 79
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

    if-eqz p1, :cond_2

    .line 80
    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->mShowSystem:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->setShowSystem(Z)V

    :cond_2
    return v0
.end method
