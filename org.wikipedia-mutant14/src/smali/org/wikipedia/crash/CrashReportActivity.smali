.class public Lorg/wikipedia/crash/CrashReportActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "CrashReportActivity.java"

# interfaces
.implements Lorg/wikipedia/crash/CrashReportFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/crash/CrashReportFragment;",
        ">;",
        "Lorg/wikipedia/crash/CrashReportFragment$Callback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method private getLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/crash/CrashReportActivity;->createFragment()Lorg/wikipedia/crash/CrashReportFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/crash/CrashReportFragment;
    .locals 1

    .line 13
    invoke-static {}, Lorg/wikipedia/crash/CrashReportFragment;->newInstance()Lorg/wikipedia/crash/CrashReportFragment;

    move-result-object v0

    return-object v0
.end method

.method public onQuit()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onStartOver()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lorg/wikipedia/crash/CrashReportActivity;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
