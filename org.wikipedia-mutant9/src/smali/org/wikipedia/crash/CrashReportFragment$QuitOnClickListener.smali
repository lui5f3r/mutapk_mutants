.class Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;
.super Ljava/lang/Object;
.source "CrashReportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/crash/CrashReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuitOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/crash/CrashReportFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/crash/CrashReportFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;->this$0:Lorg/wikipedia/crash/CrashReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/crash/CrashReportFragment;Lorg/wikipedia/crash/CrashReportFragment$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;-><init>(Lorg/wikipedia/crash/CrashReportFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lorg/wikipedia/crash/CrashReportFragment$QuitOnClickListener;->this$0:Lorg/wikipedia/crash/CrashReportFragment;

    invoke-static {p1}, Lorg/wikipedia/crash/CrashReportFragment;->access$200(Lorg/wikipedia/crash/CrashReportFragment;)Lorg/wikipedia/crash/CrashReportFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/crash/CrashReportFragment$Callback;->onQuit()V

    return-void
.end method
