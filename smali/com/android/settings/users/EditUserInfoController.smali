.class public Lcom/android/settings/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
    }
.end annotation


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 70
    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public createDialog(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 9

    .line 115
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    .line 116
    iput-object p6, p0, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    .line 117
    iget-object p6, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    if-nez p6, :cond_0

    .line 118
    const-class p6, Landroid/os/UserManager;

    invoke-virtual {p4, p6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/UserManager;

    iput-object p6, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    .line 120
    :cond_0
    invoke-virtual {p4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p6

    const v0, 0x7f0d00a3

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    .line 123
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const v1, 0x7f0a04b2

    .line 125
    invoke-virtual {p6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 126
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a04b3

    .line 128
    invoke-virtual {p6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 131
    invoke-static {p4, v2}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    invoke-static {p4, v2, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 138
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/users/EditUserInfoController;->createEditUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    .line 140
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x7f120bc4

    .line 141
    invoke-virtual {v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p4, 0x1

    .line 143
    invoke-virtual {v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p4, 0x104000a

    new-instance p6, Lcom/android/settings/users/EditUserInfoController$2;

    move-object v2, p6

    move-object v3, p0

    move-object v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/users/EditUserInfoController$2;-><init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroidx/fragment/app/Fragment;)V

    .line 144
    invoke-virtual {v0, p4, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance p2, Lcom/android/settings/users/EditUserInfoController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/users/EditUserInfoController$1;-><init>(Lcom/android/settings/users/EditUserInfoController;)V

    .line 183
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 192
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method createEditUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/users/EditUserPhotoController;
    .locals 7

    .line 201
    new-instance v6, Lcom/android/settings/users/EditUserPhotoController;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/EditUserPhotoController;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    return-object v6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pending_photo"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    const-string v1, "awaiting_result"

    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending_photo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    if-eqz p0, :cond_1

    const-string v0, "awaiting_result"

    .line 96
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method
