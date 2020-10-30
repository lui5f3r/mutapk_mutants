.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$PreferenceMultiLine$dwyI0lowRFlLRNJl0vy6YhSJQbI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/settings/PreferenceMultiLine;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/PreferenceMultiLine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/-$$Lambda$PreferenceMultiLine$dwyI0lowRFlLRNJl0vy6YhSJQbI;->f$0:Lorg/wikipedia/settings/PreferenceMultiLine;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/settings/-$$Lambda$PreferenceMultiLine$dwyI0lowRFlLRNJl0vy6YhSJQbI;->f$0:Lorg/wikipedia/settings/PreferenceMultiLine;

    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/PreferenceMultiLine;->lambda$onBindViewHolder$0$PreferenceMultiLine(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
