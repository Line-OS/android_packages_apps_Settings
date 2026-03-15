.class public Lcom/google/android/settings/aware/SilenceGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SilenceGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/google/android/settings/aware/SilenceGestureSettings$1;

    invoke-direct {v0}, Lcom/google/android/settings/aware/SilenceGestureSettings$1;-><init>()V

    sput-object v0, Lcom/google/android/settings/aware/SilenceGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

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

    .line 45
    new-instance v0, Lcom/google/android/settings/aware/SilenceGestureFooterPreferenceController;

    invoke-direct {v0, p1}, Lcom/google/android/settings/aware/SilenceGestureFooterPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SilenceGestureSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x659

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15009a

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 30
    const-class p1, Lcom/google/android/settings/aware/SilenceGestureFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/google/android/settings/aware/SilenceGestureFooterPreferenceController;

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1, p0}, Lcom/google/android/settings/aware/SilenceGestureFooterPreferenceController;->setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V

    return-void
.end method
