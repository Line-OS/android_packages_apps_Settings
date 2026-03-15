.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 72
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 75
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0191

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a03ca

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x300

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setHomepageContainerPaddingTop()V

    const p1, 0x7f0a03a7

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    .line 53
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    const/16 v1, 0x5de

    .line 54
    invoke-interface {v0, p0, p1, v1}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;I)V

    const p1, 0x7f0a002a

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 57
    new-instance v0, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    .line 58
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 60
    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    const v0, 0x7f0a011d

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 64
    :cond_0
    new-instance p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {p1}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    const v0, 0x7f0a0279

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method

.method setHomepageContainerPaddingTop()V
    .locals 3

    const v0, 0x7f0a020b

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070240

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    const/4 p0, 0x0

    .line 91
    invoke-virtual {v0, p0, v1, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
