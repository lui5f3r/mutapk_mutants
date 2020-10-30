.class public final synthetic Lorg/wikipedia/analytics/-$$Lambda$InstallReferrerListener$WfTE4Iuv_m0H_6uvMfNQH11wBSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/analytics/InstallReferrerListener;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/analytics/InstallReferrerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/analytics/-$$Lambda$InstallReferrerListener$WfTE4Iuv_m0H_6uvMfNQH11wBSM;->f$0:Lorg/wikipedia/analytics/InstallReferrerListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/analytics/-$$Lambda$InstallReferrerListener$WfTE4Iuv_m0H_6uvMfNQH11wBSM;->f$0:Lorg/wikipedia/analytics/InstallReferrerListener;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/InstallReferrerListener;->lambda$onInstallReferrerSetupFinished$0$InstallReferrerListener()V

    return-void
.end method
