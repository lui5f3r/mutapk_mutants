.class public final synthetic Lorg/wikipedia/activity/-$$Lambda$BaseActivity$yFzDt7G6oCTeDvwi-qkNKk17ez0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/activity/-$$Lambda$BaseActivity$yFzDt7G6oCTeDvwi-qkNKk17ez0;->f$0:Lorg/wikipedia/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/activity/-$$Lambda$BaseActivity$yFzDt7G6oCTeDvwi-qkNKk17ez0;->f$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lorg/wikipedia/activity/BaseActivity;->lambda$showStoragePermissionSnackbar$0$BaseActivity(Landroid/view/View;)V

    return-void
.end method
