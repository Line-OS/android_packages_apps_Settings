.class abstract Lcom/google/android/settings/aware/AwareFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AwareFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field public static final TIPS_LINK:Ljava/lang/String; = "tips_link"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

.field private mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 29
    iget-object p1, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-void
.end method

.method private getFooterText()Ljava/lang/CharSequence;
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->getLinkInfo()Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->getTipsLinkInfo()Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->getText()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v4, v3, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v0, v4, v2

    .line 57
    invoke-static {p0, v4}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    if-eqz v1, :cond_1

    new-array v0, v3, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v1, v0, v2

    .line 61
    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/aware/AwareFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method protected getLinkInfo()Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    .locals 2

    .line 68
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance v1, Lcom/google/android/settings/aware/-$$Lambda$AwareFooterPreferenceController$diAvpwwhz-Qnm8JZ8kC-WOyR71s;

    invoke-direct {v1, p0}, Lcom/google/android/settings/aware/-$$Lambda$AwareFooterPreferenceController$diAvpwwhz-Qnm8JZ8kC-WOyR71s;-><init>(Lcom/google/android/settings/aware/AwareFooterPreferenceController;)V

    const-string p0, "link"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method abstract getMetricsCategory()I
.end method

.method abstract getText()I
.end method

.method protected getTipsLinkInfo()Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    .locals 2

    .line 77
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance v1, Lcom/google/android/settings/aware/-$$Lambda$AwareFooterPreferenceController$yDM34_kCNor2APh5PqjQh9i_5UE;

    invoke-direct {v1, p0}, Lcom/google/android/settings/aware/-$$Lambda$AwareFooterPreferenceController$yDM34_kCNor2APh5PqjQh9i_5UE;-><init>(Lcom/google/android/settings/aware/AwareFooterPreferenceController;)V

    const-string p0, "tips_link"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public synthetic lambda$getLinkInfo$0$AwareFooterPreferenceController(Landroid/view/View;)V
    .locals 1

    .line 69
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/google/android/settings/aware/AwareSettings;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public synthetic lambda$getTipsLinkInfo$1$AwareFooterPreferenceController(Landroid/view/View;)V
    .locals 2

    .line 78
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f2f

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->getFooterText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method
