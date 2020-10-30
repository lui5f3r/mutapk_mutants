.class public final synthetic Lorg/wikipedia/activity/-$$Lambda$BaseActivity$w12bGpRl1jLhQp_Z3zQ66dAjT3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/activity/-$$Lambda$BaseActivity$w12bGpRl1jLhQp_Z3zQ66dAjT3Q;->f$0:Lorg/wikipedia/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/activity/-$$Lambda$BaseActivity$w12bGpRl1jLhQp_Z3zQ66dAjT3Q;->f$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/activity/BaseActivity;->lambda$maybeShowLoggedOutInBackgroundDialog$2$BaseActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
