.class public Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# instance fields
.field private final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field protected final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    .line 77
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private bindSummary(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f120ee2

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.android.settings.summary_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 181
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$ZURtsL5p8CXTrOAkGDBUtrTogwM;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$ZURtsL5p8CXTrOAkGDBUtrTogwM;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 1

    .line 259
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$bindIcon$3(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$bindSummary$1(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private launchIntentOrSelectProfile(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 3

    .line 234
    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot resolve intent, skipping. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 240
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->isPrimaryProfileOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 245
    iget-object p0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v1, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.extra.USER"

    .line 247
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-eqz v0, :cond_3

    .line 248
    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 251
    invoke-virtual {p1, p3, v1, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_1

    .line 241
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 242
    invoke-virtual {p1, p3, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V
    .locals 2

    .line 197
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 200
    iget-object p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 202
    new-instance p3, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {p3, v1, v0}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, p2}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 205
    :goto_0
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 207
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "com.android.settings.icon_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 208
    new-instance p3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    invoke-static {p3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_1
    return-void
.end method

.method public bindPreferenceToTile(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 117
    :goto_0
    invoke-direct {p0, p4, p5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSummary(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    .line 118
    invoke-virtual {p0, p4, p5, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V

    .line 119
    invoke-virtual {p5}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    const/4 p6, 0x0

    if-eqz p2, :cond_2

    const-string p6, "com.android.settings.FRAGMENT_CLASS"

    .line 124
    invoke-virtual {p2, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "com.android.settings.intent.action"

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, p6

    .line 127
    :goto_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p5}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p6

    invoke-direct {v5, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p6, ":settings:source_metrics"

    .line 131
    invoke-virtual {v5, p6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    .line 134
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_4
    new-instance p2, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p5

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    invoke-virtual {p4, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {p5}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 145
    invoke-virtual {p5}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p1

    .line 147
    invoke-virtual {p5}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const p0, 0x7fffffff

    if-ne p7, p0, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr p1, p7

    .line 151
    invoke-virtual {p4, p1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_4

    .line 149
    :cond_6
    :goto_3
    invoke-virtual {p4, p1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/CategoryManager;->getCategories(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "dashboard_tile_pref_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$bindIcon$4$DashboardFeatureProviderImpl(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .locals 3

    .line 209
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 216
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 217
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "com.android.settings.icon_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1, v1}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_2

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get icon from uri "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_2
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    .line 225
    new-instance p1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;-><init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$bindPreferenceToTile$0$DashboardFeatureProviderImpl(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$bindSummary$2$DashboardFeatureProviderImpl(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .locals 2

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 183
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings.summary"

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    new-instance p1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
