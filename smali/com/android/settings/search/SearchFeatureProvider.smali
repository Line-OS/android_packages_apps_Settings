.class public interface abstract Lcom/android/settings/search/SearchFeatureProvider;
.super Ljava/lang/Object;
.source "SearchFeatureProvider.java"


# direct methods
.method public static synthetic lambda$initSearchToolbar$0(Lcom/android/settings/search/SearchFeatureProvider;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 2
    .param p0, "_this"    # Lcom/android/settings/search/SearchFeatureProvider;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 89
    invoke-interface {p0, p3, p2}, Lcom/android/settings/search/SearchFeatureProvider;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v0, 0x10000

    invoke-virtual {p2, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 92
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {p3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object p2

    .line 97
    invoke-interface {p2, p3}, Lcom/android/settings/slices/SlicesFeatureProvider;->indexSliceDataAsync(Landroid/content/Context;)V

    .line 98
    invoke-static {p3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    const/16 v0, 0xe2

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 99
    invoke-virtual {p2, p3, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/16 p2, 0x1f5

    .line 100
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public abstract buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;
.end method

.method public abstract getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;
.end method

.method public getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f12045a

    .line 59
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;I)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {p0, p1}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p2}, Landroid/widget/Toolbar;->getNavigationView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x2

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$UfKZCZU-ArIZxj_Nhu0l8JhYB5w;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$UfKZCZU-ArIZxj_Nhu0l8JhYB5w;-><init>(Lcom/android/settings/search/SearchFeatureProvider;Landroid/app/Activity;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
