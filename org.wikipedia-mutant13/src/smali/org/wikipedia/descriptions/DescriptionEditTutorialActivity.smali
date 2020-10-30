.class public Lorg/wikipedia/descriptions/DescriptionEditTutorialActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "DescriptionEditTutorialActivity.java"

# interfaces
.implements Lorg/wikipedia/onboarding/OnboardingFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;",
        ">;",
        "Lorg/wikipedia/onboarding/OnboardingFragment$Callback;"
    }
.end annotation


# static fields
.field public static final DESCRIPTION_SELECTED_TEXT:Ljava/lang/String; = "selectedText"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/descriptions/DescriptionEditTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "selectedText"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditTutorialActivity;->createFragment()Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;
    .locals 1

    .line 28
    invoke-static {}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;->newInstance()Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;

    move-result-object v0

    return-object v0
.end method

.method public onComplete()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
