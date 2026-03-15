.class Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCandidateInfo"
.end annotation


# instance fields
.field final mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field final synthetic this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const/4 p1, 0x1

    .line 228
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 229
    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0800e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 236
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 245
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 244
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method
