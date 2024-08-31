// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudentModelCollection on Isar {
  IsarCollection<StudentModel> get studentModels => this.collection();
}

const StudentModelSchema = CollectionSchema(
  name: r'StudentModel',
  id: -1023695268111720628,
  properties: {
    r'gradeGoal': PropertySchema(
      id: 0,
      name: r'gradeGoal',
      type: IsarType.double,
    ),
    r'isDone': PropertySchema(
      id: 1,
      name: r'isDone',
      type: IsarType.bool,
    ),
    r'mainTask': PropertySchema(
      id: 2,
      name: r'mainTask',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'schoolLvl': PropertySchema(
      id: 4,
      name: r'schoolLvl',
      type: IsarType.string,
    ),
    r'section': PropertySchema(
      id: 5,
      name: r'section',
      type: IsarType.string,
    ),
    r'trim1': PropertySchema(
      id: 6,
      name: r'trim1',
      type: IsarType.double,
    ),
    r'trim2': PropertySchema(
      id: 7,
      name: r'trim2',
      type: IsarType.double,
    ),
    r'trim3': PropertySchema(
      id: 8,
      name: r'trim3',
      type: IsarType.double,
    )
  },
  estimateSize: _studentModelEstimateSize,
  serialize: _studentModelSerialize,
  deserialize: _studentModelDeserialize,
  deserializeProp: _studentModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _studentModelGetId,
  getLinks: _studentModelGetLinks,
  attach: _studentModelAttach,
  version: '3.1.0+1',
);

int _studentModelEstimateSize(
  StudentModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mainTask;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.schoolLvl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.section;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _studentModelSerialize(
  StudentModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.gradeGoal);
  writer.writeBool(offsets[1], object.isDone);
  writer.writeString(offsets[2], object.mainTask);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.schoolLvl);
  writer.writeString(offsets[5], object.section);
  writer.writeDouble(offsets[6], object.trim1);
  writer.writeDouble(offsets[7], object.trim2);
  writer.writeDouble(offsets[8], object.trim3);
}

StudentModel _studentModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StudentModel();
  object.gradeGoal = reader.readDoubleOrNull(offsets[0]);
  object.id = id;
  object.isDone = reader.readBoolOrNull(offsets[1]);
  object.mainTask = reader.readStringOrNull(offsets[2]);
  object.name = reader.readStringOrNull(offsets[3]);
  object.schoolLvl = reader.readStringOrNull(offsets[4]);
  object.section = reader.readStringOrNull(offsets[5]);
  object.trim1 = reader.readDoubleOrNull(offsets[6]);
  object.trim2 = reader.readDoubleOrNull(offsets[7]);
  object.trim3 = reader.readDoubleOrNull(offsets[8]);
  return object;
}

P _studentModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _studentModelGetId(StudentModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _studentModelGetLinks(StudentModel object) {
  return [];
}

void _studentModelAttach(
    IsarCollection<dynamic> col, Id id, StudentModel object) {
  object.id = id;
}

extension StudentModelQueryWhereSort
    on QueryBuilder<StudentModel, StudentModel, QWhere> {
  QueryBuilder<StudentModel, StudentModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudentModelQueryWhere
    on QueryBuilder<StudentModel, StudentModel, QWhereClause> {
  QueryBuilder<StudentModel, StudentModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StudentModelQueryFilter
    on QueryBuilder<StudentModel, StudentModel, QFilterCondition> {
  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      gradeGoalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gradeGoal',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      gradeGoalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gradeGoal',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      gradeGoalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gradeGoal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      gradeGoalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gradeGoal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      gradeGoalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gradeGoal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      gradeGoalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gradeGoal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      isDoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      isDoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> isDoneEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDone',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainTask',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainTask',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainTask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainTask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainTask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainTask',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mainTask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mainTask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainTask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainTask',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainTask',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      mainTaskIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainTask',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'schoolLvl',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'schoolLvl',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolLvl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schoolLvl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schoolLvl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schoolLvl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'schoolLvl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'schoolLvl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'schoolLvl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'schoolLvl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolLvl',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      schoolLvlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'schoolLvl',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'section',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'section',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'section',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'section',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      sectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'trim1',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'trim1',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim1EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trim1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim1GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trim1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim1LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trim1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim1Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trim1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'trim2',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'trim2',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim2EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trim2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim2GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trim2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim2LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trim2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim2Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trim2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'trim3',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'trim3',
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim3EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trim3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition>
      trim3GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trim3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim3LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trim3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterFilterCondition> trim3Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trim3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension StudentModelQueryObject
    on QueryBuilder<StudentModel, StudentModel, QFilterCondition> {}

extension StudentModelQueryLinks
    on QueryBuilder<StudentModel, StudentModel, QFilterCondition> {}

extension StudentModelQuerySortBy
    on QueryBuilder<StudentModel, StudentModel, QSortBy> {
  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByGradeGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeGoal', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByGradeGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeGoal', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByMainTask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainTask', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByMainTaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainTask', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortBySchoolLvl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolLvl', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortBySchoolLvlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolLvl', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortBySection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortBySectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByTrim1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim1', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByTrim1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim1', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByTrim2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim2', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByTrim2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim2', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByTrim3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim3', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> sortByTrim3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim3', Sort.desc);
    });
  }
}

extension StudentModelQuerySortThenBy
    on QueryBuilder<StudentModel, StudentModel, QSortThenBy> {
  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByGradeGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeGoal', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByGradeGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeGoal', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByMainTask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainTask', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByMainTaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainTask', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenBySchoolLvl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolLvl', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenBySchoolLvlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolLvl', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenBySection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenBySectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByTrim1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim1', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByTrim1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim1', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByTrim2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim2', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByTrim2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim2', Sort.desc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByTrim3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim3', Sort.asc);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QAfterSortBy> thenByTrim3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trim3', Sort.desc);
    });
  }
}

extension StudentModelQueryWhereDistinct
    on QueryBuilder<StudentModel, StudentModel, QDistinct> {
  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByGradeGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gradeGoal');
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDone');
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByMainTask(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainTask', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctBySchoolLvl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schoolLvl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctBySection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'section', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByTrim1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trim1');
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByTrim2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trim2');
    });
  }

  QueryBuilder<StudentModel, StudentModel, QDistinct> distinctByTrim3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trim3');
    });
  }
}

extension StudentModelQueryProperty
    on QueryBuilder<StudentModel, StudentModel, QQueryProperty> {
  QueryBuilder<StudentModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StudentModel, double?, QQueryOperations> gradeGoalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gradeGoal');
    });
  }

  QueryBuilder<StudentModel, bool?, QQueryOperations> isDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDone');
    });
  }

  QueryBuilder<StudentModel, String?, QQueryOperations> mainTaskProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainTask');
    });
  }

  QueryBuilder<StudentModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<StudentModel, String?, QQueryOperations> schoolLvlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schoolLvl');
    });
  }

  QueryBuilder<StudentModel, String?, QQueryOperations> sectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'section');
    });
  }

  QueryBuilder<StudentModel, double?, QQueryOperations> trim1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trim1');
    });
  }

  QueryBuilder<StudentModel, double?, QQueryOperations> trim2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trim2');
    });
  }

  QueryBuilder<StudentModel, double?, QQueryOperations> trim3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trim3');
    });
  }
}
