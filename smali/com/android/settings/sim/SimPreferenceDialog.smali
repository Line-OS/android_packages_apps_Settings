.class public Lcom/android/settings/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private final SIM_NAME:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDialogLayout:Landroid/view/View;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "sim_name"

    .line 57
    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->SIM_NAME:Ljava/lang/String;

    const-string v0, "tint_pos"

    .line 58
    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->TINT_POS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/sim/SimPreferenceDialog;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    return-object p0
.end method

.method private createEditDialog(Landroid/os/Bundle;)V
    .locals 7

    .line 107
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a03e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 109
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a03ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 112
    new-instance v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const v4, 0x7f0d018d

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    const v2, 0x1090009

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    move v2, v1

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 118
    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    iput v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/settings/sim/SimPreferenceDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/sim/SimPreferenceDialog$1;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 140
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0a02ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 141
    iget-object v4, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x104000e

    if-eqz v5, :cond_2

    .line 143
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 145
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_2
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x7f120dc5

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 154
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 153
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 156
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120aef

    new-instance v2, Lcom/android/settings/sim/SimPreferenceDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/sim/SimPreferenceDialog$2;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 176
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1203bd

    new-instance v1, Lcom/android/settings/sim/SimPreferenceDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimPreferenceDialog$3;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 183
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/sim/SimPreferenceDialog$4;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimPreferenceDialog$4;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 190
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iput-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "slot_id"

    const/4 v2, -0x1

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    .line 66
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 68
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    .line 69
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 72
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 73
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0104

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tint_pos"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f0a03ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 99
    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 101
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v0, 0x7f0a03e4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v0, "sim_name"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {p0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    const-string v1, "tint_pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a03e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 86
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
