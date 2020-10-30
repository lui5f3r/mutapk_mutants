.class public Lorg/wikipedia/crash/CrashReportFragment;
.super Landroidx/fragment/app/Fragment;
.source "CrashReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;,
        Lorg/wikipedia/crash/CrashReportFragment$StartOverOnClickListener;,
        Lorg/wikipedia/crash/CrashReportFragment$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/crash/CrashReportFragment;)Lorg/wikipedia/crash/CrashReportFragment$Callback;
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/wikipedia/crash/CrashReportFragment;->getCallback()Lorg/wikipedia/crash/CrashReportFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method private getCallback()Lorg/wikipedia/crash/CrashReportFragment$Callback;
    .locals 1

    .line 42
    const-class v0, Lorg/wikipedia/crash/CrashReportFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/crash/CrashReportFragment$Callback;

    return-object v0
.end method

.method public static newInstance()Lorg/wikipedia/crash/CrashReportFragment;
    .locals 1

    .line 22
    new-instance v0, Lorg/wikipedia/crash/CrashReportFragment;

    invoke-direct {v0}, Lorg/wikipedia/crash/CrashReportFragment;-><init>()V

    return-object v0
.end method

.method private setOnClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c004c

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lorg/wikipedia/crash/CrashReportFragment$StartOverOnClickListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/crash/CrashReportFragment$StartOverOnClickListener;-><init>(Lorg/wikipedia/crash/CrashReportFragment;Lorg/wikipedia/crash/CrashReportFragment$1;)V

    const v0, 0x7f0900db

    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/crash/CrashReportFragment;->setOnClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 33
    new-instance p2, Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;-><init>(Lorg/wikipedia/crash/CrashReportFragment;Lorg/wikipedia/crash/CrashReportFragment$1;)V

    const p3, 0x7f0900da

    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/crash/CrashReportFragment;->setOnClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    return-object p1
.end method
