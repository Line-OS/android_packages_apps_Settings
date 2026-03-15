.class public Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "SystemNavigationGestureSettings.java"


# static fields
.field static BACK_GESTURE_INSET_DEFAULT_OVERLAY:I = 0x0

.field static final BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

.field static final KEY_SYSTEM_NAV_2BUTTONS:Ljava/lang/String; = "system_nav_2buttons"

.field static final KEY_SYSTEM_NAV_3BUTTONS:Ljava/lang/String; = "system_nav_3buttons"

.field static final KEY_SYSTEM_NAV_GESTURAL:Ljava/lang/String; = "system_nav_gestural"

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_EXTRA_WIDE_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_extra_wide_back"

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_NARROW_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_narrow_back"

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_WIDE_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_wide_back"

.field static final PREFS_BACK_SENSITIVITY_KEY:Ljava/lang/String; = "system_navigation_back_sensitivity"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "system_navigation_settings_preferences"


# instance fields
.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.android.internal.systemui.navbar.gestural_narrow_back"

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    const-string v2, "com.android.internal.systemui.navbar.gestural_wide_back"

    const-string v3, "com.android.internal.systemui.navbar.gestural_extra_wide_back"

    .line 92
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 99
    sput v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_DEFAULT_OVERLAY:I

    .line 328
    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 241
    :goto_0
    sget-object v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x0

    .line 244
    :try_start_0
    aget-object v2, v2, v1

    const/4 v4, -0x2

    invoke-interface {p1, v2, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "system_navigation_settings_preferences"

    .line 251
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sget p1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_DEFAULT_OVERLAY:I

    const-string v0, "system_navigation_back_sensitivity"

    .line 252
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isEdgeToEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "system_nav_gestural"

    return-object p0

    .line 259
    :cond_0
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "system_nav_2buttons"

    return-object p0

    :cond_1
    const-string p0, "system_nav_3buttons"

    return-object p0
.end method

.method private isAnyServiceSupportAccessibilityButton()Z
    .locals 1

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, -0x1

    .line 311
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 314
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 315
    iget v0, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isNavBarMagnificationEnabled()Z
    .locals 2

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method static setBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;I)V
    .locals 2

    if-ltz p2, :cond_1

    .line 227
    sget-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "system_navigation_settings_preferences"

    .line 232
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "system_navigation_back_sensitivity"

    .line 233
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "system_nav_gestural"

    if-ne p0, v0, :cond_0

    .line 235
    sget-object p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 228
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sensitivity out of range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static setCurrentSystemNavigationMode(Landroid/content/Context;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 4

    .line 269
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ee22145

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x51fa588d

    if-eq v0, v1, :cond_1

    const v1, -0x700f466

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "system_nav_3buttons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_1
    const-string v0, "system_nav_gestural"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "system_nav_2buttons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "com.android.internal.systemui.navbar.threebutton"

    .line 278
    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p0, "com.android.internal.systemui.navbar.twobutton"

    .line 275
    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_6
    invoke-static {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result p0

    .line 272
    sget-object p2, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    aget-object p0, p2, p0

    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ee22145

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x51fa588d

    if-eq v1, v2, :cond_1

    const v0, -0x700f466

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "system_nav_3buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "system_nav_gestural"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    const-string v0, "system_nav_2buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f110020

    const v0, 0x7f080306

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_2

    :cond_5
    const p1, 0x7f11001f

    const v0, 0x7f080305

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_2

    :cond_6
    const p1, 0x7f110021

    const v0, 0x7f080307

    .line 296
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    :goto_2
    return-void
.end method

.method private static setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x2

    .line 286
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    instance-of p2, p3, Lcom/android/settings/utils/CandidateInfoExtra;

    if-eqz p2, :cond_2

    instance-of p2, p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    if-nez p2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    move-object p2, p3

    check-cast p2, Lcom/android/settings/utils/CandidateInfoExtra;

    invoke-virtual {p2}, Lcom/android/settings/utils/CandidateInfoExtra;->loadSummary()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    check-cast p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 161
    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "system_nav_gestural"

    if-ne p2, p3, :cond_1

    const/4 p2, 0x2

    .line 162
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    .line 163
    new-instance p2, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$JLPyJ0q716VHKo4MJYnw7DzMMKM;

    invoke-direct {p2, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$JLPyJ0q716VHKo4MJYnw7DzMMKM;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 166
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    .line 180
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f12060e

    .line 183
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f12060d

    .line 184
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "system_nav_gestural"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "com.android.internal.systemui.navbar.twobutton"

    .line 187
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f120eee

    .line 190
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120eed

    .line 191
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "system_nav_2buttons"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    .line 194
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f120868

    .line 197
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120867

    .line 198
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v4, "system_nav_3buttons"

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 0

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500a8

    return p0
.end method

.method public synthetic lambda$bindPreferenceExtra$0$SystemNavigationGestureSettings(Landroid/view/View;)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->show(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 108
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 110
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_system_navigation_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "overlay"

    .line 114
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 116
    new-instance v0, Lcom/android/settings/widget/VideoPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 117
    iget-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/VideoPreference;->setHeight(F)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/Context;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    const-string v0, "system_nav_gestural"

    .line 215
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAnyServiceSupportAccessibilityButton()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isNavBarMagnificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/SettingsTutorialDialogWrapperActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateCandidates()V
    .locals 11

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCandidates()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/widget/CandidateInfo;

    .line 141
    new-instance v10, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v10, v0, v3, v6}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 144
    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, v10

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    return-void
.end method
