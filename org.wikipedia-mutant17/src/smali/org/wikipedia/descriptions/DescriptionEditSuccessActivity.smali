.class public Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivityTransparent;
.source "DescriptionEditSuccessActivity.java"

# interfaces
.implements Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivityTransparent<",
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;",
        ">;",
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;"
    }
.end annotation


# static fields
.field public static final RESULT_OK_FROM_EDIT_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivityTransparent;-><init>()V

    return-void
.end method

.method static newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;
    .locals 2

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "invokeSource"

    .line 21
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;->createFragment()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;
    .locals 1

    .line 25
    invoke-static {}, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->newInstance()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;

    move-result-object v0

    return-object v0
.end method

.method public onDismissClick()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
