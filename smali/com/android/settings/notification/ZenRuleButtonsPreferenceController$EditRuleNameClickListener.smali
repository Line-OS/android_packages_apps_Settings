.class public Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditRuleNameClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$000(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;-><init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V

    return-void
.end method
